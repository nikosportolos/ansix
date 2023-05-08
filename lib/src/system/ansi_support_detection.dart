import 'dart:io';

import 'package:ansix/src/system/process_manager.dart';

abstract class AnsiSupportDetection {
  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  static bool get supportsAnsi => stdout.supportsAnsiEscapes;

  /// Returns true if the standard output stream is attached to a terminal.
  static bool get attachedToTerminal => stdioType(stdout) == StdioType.terminal;

  /// Returns true if the standard output stream is attached to a pipe.
  static bool get attachedToPipe => stdioType(stdout) == StdioType.pipe;

  static final ProcessManager _processManager = ProcessManager();

  /// Returns true if ANSI escape characters are supported in the attached terminal.
  static bool checkAnsiSupport() {
    final bool attachedToValidStream = attachedToTerminal || attachedToPipe;
    final bool isSupported = attachedToValidStream && supportsAnsi;

    if (!isSupported && Platform.isWindows) {
      return attachedToValidStream && _processManager.detectWindowsAnsiSupport();
    }

    return isSupported;
  }
}
