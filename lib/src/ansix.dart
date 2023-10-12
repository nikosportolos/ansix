import 'dart:convert';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/system/process_manager.dart';
import 'package:ansix/src/system/terminal/terminal.dart';
import 'package:ansix/src/writer/ansi.dart';
import 'package:ansix/src/writer/standard.dart';
import 'package:ansix/src/writer/writer.dart';
import 'package:meta/meta.dart';

/// **AnsiX**
///
/// AnsiX is a powerful and easy-to-use library that provides tools and extensions
/// for adding ANSI color and styling support to your Dart & Flutter applications.
class AnsiX {
  AnsiX._({
    final ProcessManager? processManager,
    final AnsiTerminal? terminal,
  })  : _processManager = processManager ?? ProcessManager(),
        _terminal = terminal ?? AnsiTerminal.create() {
    _instance = this;
  }

  static AnsiX? _instance;
  static AnsiX get _ansix => _instance ?? AnsiX._();

  final ProcessManager _processManager;
  final AnsiTerminal _terminal;

  /// Provides information about the size of the attached terminal.
  static TerminalSize get size => _ansix._terminal.size;

  /// Determines if printing messages to the attached terminal is allowed.
  ///
  /// Defaults to true for debug mode only.
  static bool allowPrint = isDebugMode;

  /// Returns true if ANSI formatting is supported and enabled.
  static bool get isEnabled => _ansix._isEnabled;
  bool _isEnabled = true;

  /// Returns the active text formatter.
  static TextFormatter get formatter => _ansix._formatter;
  TextFormatter _formatter = AnsiTextFormatter();

  /// The active text writer.
  static Writer writer = const AnsiWriter();

  /// Enables ANSI formatting (if supported by the system).
  static void enable() {
    _ansix._isEnabled = true;
    _ansix._formatter = AnsiTextFormatter();
    writer = const AnsiWriter();
  }

  /// Disables ANSI formatting.
  static void disable() {
    _ansix._isEnabled = false;
    _ansix._formatter = StandardTextFormatter();
    writer = const NoAnsiWriter();
  }

  /// Returns true if ANSI escape characters are supported in the attached terminal.
  static bool checkAnsiSupport() {
    final bool attachedToValidStream = _ansix._terminal.attachedToValidStream;
    final bool isSupported =
        attachedToValidStream && _ansix._terminal.supportsAnsi;

    if (!isSupported) {
      if (_ansix._terminal.runsOnWindows) {
        return attachedToValidStream && //
            _ansix._processManager.detectWindowsAnsiSupport();
      }

      return attachedToValidStream || //
          _ansix._processManager.determineTerminalType() == TerminalType.bash;
    }

    return true;
  }

  /// **Ensure that ANSI formatting is supported.**
  ///
  /// If [silent] = false, no exceptions will be thrown.
  ///
  /// If [force] = true, ANSI formatting will be enabled even if ANSI support detection failed.
  /// Use with caution, as it may lead to printing wrongly-formatted text.
  static void ensureSupportsAnsi({
    final bool silent = false,
    final bool force = false,
  }) {
    if (force) {
      enable();
      return;
    }

    try {
      if (!checkAnsiSupport()) {
        throw const AnsiXException.ansiNotSupported(
          'ANSI escape characters are not supported.',
        );
      }

      enable();
    } on AnsiXException catch (e) {
      disable();
      if (silent) {
        handleException(e);
        return;
      }
      rethrow;
    }
  }

  /// Prints a string representation of the object to console
  /// with the given styles and ANSI colors.
  static void printStyled(
    final Object? object, {
    required final AnsiTextStyle textStyle,
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    writer.write('$object'.styled(
      textStyle,
      foreground,
      background,
    ));
  }

  /// Prints an indented string representation of the JSON
  /// to console with the given styles and ANSI colors.
  static void printJson(
    final Object? object, {
    final AnsiTextStyle textStyle = const AnsiTextStyle(),
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
    final int tabs = 2,
  }) {
    writer.write(
      JsonEncoder.withIndent(' ' * tabs) //
          .convert(object)
          .styled(textStyle, foreground, background),
    );
  }

  /// Prints a tree-view representation of the given data to console.
  static void printTreeView(
    final dynamic data, {
    final AnsiTreeViewTheme theme = const AnsiTreeViewTheme(),
  }) {
    writer.write(AnsiTreeView(
      data,
      theme: theme,
    ));
  }

  /// Prints a grid representation of the given data to console.
  static void printDataGrid(
    final List<List<Object?>> data, {
    required final AnsiGridType type,
    final AnsiGridTheme theme = const AnsiGridTheme(),
  }) {
    writer.write(
      switch (type) {
        AnsiGridType.fromRows => AnsiGrid.fromRows(data, theme: theme),
        AnsiGridType.fromColumns => AnsiGrid.fromColumns(data, theme: theme),
      },
    );
  }
}

/// Initializes a custom instance of **AnsiX**.
///
/// Used only for testing.
@visibleForTesting
void initializeAnsiX({
  final ProcessManager? processManager,
  final AnsiTerminal? terminal,
}) {
  AnsiX._instance = AnsiX._(
    processManager: processManager,
    terminal: terminal,
  );
}
