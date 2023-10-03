import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/src/system/terminal/io.dart'
    if (dart.library.html) 'package:ansix/src/system/terminal/web.dart';
import 'package:ansix/src/system/terminal/size.dart';

export 'size.dart';

/// **TerminalType**
enum TerminalType { unknown, bash, cmd, powershell }

abstract class AnsiTerminal {
  /// Returns true when [Platform.isWindows]
  bool get runsOnWindows;

  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  bool get supportsAnsi;

  /// Returns true if the standard output stream is attached to a terminal or a pipe.
  bool get attachedToValidStream;

  /// Returns the [TerminalSize] of the attached terminal.
  ///
  /// If no terminal is attached,
  /// the default terminal size (80, 24) will be returned instead.
  TerminalSize get size;

  factory AnsiTerminal.create() => AnsiTerminalImpl();
}
