import 'dart:io';

enum TerminalType { unknown, bash, cmd, powershell }

class AnsiTerminal {
  AnsiTerminal({
    final Stdout? out,
  }) : _stdout = out ?? stdout;

  final Stdout _stdout;

  /// Returns true when [Platform.isWindows]
  bool get runsOnWindows => Platform.isWindows;

  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  bool get supportsAnsi => _stdout.supportsAnsiEscapes;

  /// Returns true if the standard output stream is attached to a terminal or a pipe.
  bool get attachedToValidStream {
    return stdioType(_stdout) == StdioType.terminal || //
        stdioType(_stdout) == StdioType.pipe;
  }
}
