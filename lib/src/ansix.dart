import 'dart:io';

import 'package:ansix/ansix.dart';
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

  static void ensureSupportsAnsi({final bool silent = false}) {
    try {
      final bool attachedToValidStream = attachedToTerminal || attachedToPipe;
      bool isSupported = supportsAnsi && attachedToValidStream;

      if (Platform.isWindows && !isSupported) {
        final WindowsLegacyMode legacyMode = WindowsLegacyMode.fromWindowsRegistry();
        isSupported = attachedToValidStream && legacyMode == WindowsLegacyMode.disabled;

        if (legacyMode == WindowsLegacyMode.enabled) {
          throw const AnsiXException.ansiNotSupported(
              'Legacy console mode is enabled. ANSI escape characters are not supported');
        }
      }

      if (!isSupported) {
        throw const AnsiXException.ansiNotSupported('ANSI escape characters are not supported.');
      }
    } on AnsiXException catch (e) {
      disable();
      if (silent) {
        _handleException(e);
        return;
      }
      rethrow;
    }
  }

  /// Returns true if ANSI formatting is supported and enabled
  static bool get isEnabled => _isEnabled;
  static bool _isEnabled = true;

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

  static TextFormatter _formatter = AnsiTextFormatter();

  static TextFormatter get formatter => _formatter;

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
