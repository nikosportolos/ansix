import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/src/system/terminal/terminal.dart';

/// **AnsiTerminal**
///
/// A library that provides information on the attached terminal.
class AnsiTerminalImpl implements AnsiTerminal {
  AnsiTerminalImpl({
    final Stdout? out,
  }) : _stdout = out ?? stdout;

  final Stdout _stdout;

  /// Returns true when [Platform.isWindows]
  @override
  bool get runsOnWindows => Platform.isWindows;

  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  @override
  bool get supportsAnsi => _stdout.supportsAnsiEscapes;

  /// Returns true if the standard output stream is attached to a terminal or a pipe.
  @override
  bool get attachedToValidStream {
    return stdioType(_stdout) == StdioType.terminal || //
        stdioType(_stdout) == StdioType.pipe;
  }

  /// Returns the [TerminalSize] of the attached terminal.
  ///
  /// If no terminal is attached,
  /// the default terminal size (80, 24) will be returned instead.
  @override
  TerminalSize get size {
    try {
      if (_stdout.hasTerminal) {
        return TerminalSize(
          columns: _stdout.terminalColumns,
          lines: _stdout.terminalLines,
        );
      }
    } catch (_) {}

    return TerminalSize.$default;
  }
}
