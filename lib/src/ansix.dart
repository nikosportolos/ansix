import 'dart:io';

import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/formatter/ansi.dart';
import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/formatter/standard.dart';

abstract class AnsiX {
  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  static bool get supportsAnsi => stdout.supportsAnsiEscapes;

  /// Returns true if the standard output stream is attached to a terminal.
  static bool get attachedToTerminal => stdioType(stdout) == StdioType.terminal;

  /// Returns true if the standard output stream is attached to a pipe.
  static bool get attachedToPipe => stdioType(stdout) == StdioType.pipe;

  /// Returns true if ANSI formatting is supported and enabled
  static bool get isEnabled => _isEnabled;
  static bool _isEnabled = true;

  static TextFormatter _formatter = AnsiTextFormatter();

  static TextFormatter get formatter => _formatter;

  static final ProcessManager _processManager = ProcessManager();

  /// Enables ANSI formatting (if supported by the system).
  static void enable() {
    _isEnabled = true;
    _formatter = AnsiTextFormatter();
  }

  /// Disables ANSI formatting.
  static void disable() {
    _isEnabled = false;
    _formatter = StandardTextFormatter();
  }

  /// Ensure that ANSI formatting is supported
  ///
  /// If [silent] = false, no exceptions will be thrown
  static void ensureSupportsAnsi({
    final bool silent = false,
    final bool force = false,
  }) {
    try {
      if (!_checkAnsiSupport()) {
        throw const AnsiXException.ansiNotSupported(
          'ANSI escape characters are not supported.',
        );
      }

      enable();
    } on AnsiXException catch (e) {
      if (force) {
        enable();
        return;
      }

      disable();
      if (silent) {
        _handleException(e);
        return;
      }
      rethrow;
    }
  }

  static bool _checkAnsiSupport() {
    final bool attachedToValidStream = attachedToTerminal || attachedToPipe;
    final bool isSupported = attachedToValidStream && supportsAnsi;
    if (!isSupported && Platform.isWindows) {
      return attachedToValidStream && _processManager.detectWindowsAnsiSupport();
    }

    return isSupported;
  }

  static void _handleException(final AnsiXException exception) {
    final StringBuffer buffer = StringBuffer()
      ..writeln()
      ..write('AnsiX Exception: ');

    exception.when(
      ansiNotSupported: (AnsiNotSupported e) {
        buffer.write(e.message);
      },
      windowsLegacyModeError: (WindowsLegacyModeError e) {
        buffer.write(e.message);
        buffer.writeln(e.innerException.toString());
      },
    );

    buffer.writeln();
    // ignore: avoid_print
    print(buffer.toString());
  }
}
