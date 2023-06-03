// coverage:ignore-file

// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/controller.dart';
import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/system/terminal.dart';

/// **AnsiX**
abstract class AnsiX {
  static final AnsiXController _controller = AnsiXController();

  /// Determines if printing messages to the attached terminal is allowed.
  ///
  /// Defaults to true for debug mode only.
  static bool allowPrint = isDebugMode;

  /// Returns true if ANSI formatting is supported and enabled.
  static bool get isEnabled => _controller.isEnabled;

  /// Returns the active text formatter.
  static TextFormatter get formatter => _controller.formatter;

  /// Returns the size of the attached terminal.
  static TerminalSize get size => _controller.terminalSize;

  /// Enables ANSI formatting (if supported by the system).
  static void enable() {
    _controller.enable();
  }

  /// Disables ANSI formatting.
  static void disable() {
    _controller.disable();
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
    _controller.ensureSupportsAnsi(
      silent: silent,
      force: force,
    );
  }

  /// Prints a string representation of the object to console
  /// with the given styles and ANSI colors.
  static void printStyled(
    final Object? object, {
    required final AnsiTextStyle textStyle,
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    if (!allowPrint) {
      return;
    }
    print('$object'.styled(
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
    if (!allowPrint) {
      return;
    }
    print(
      JsonEncoder.withIndent(' ' * tabs).convert(object).styled(
            textStyle,
            foreground,
            background,
          ),
    );
  }

  /// Prints a tree-view representation of the given data to console.
  static void printTreeView(
    final dynamic data, {
    final AnsiTreeViewTheme theme = const AnsiTreeViewTheme(),
  }) {
    if (!allowPrint) {
      return;
    }
    print(AnsiTreeView(theme: theme).format(data));
  }
}
