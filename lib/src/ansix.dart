import 'dart:io';

abstract class AnsiX {
  /// Returns true if connected to a terminal that supports ANSI escape sequences.
  bool get supportsAnsi => stdout.supportsAnsiEscapes;

  /// Returns true if a stream is attached to a terminal.
  bool get runsOnTerminal => stdioType(stdout) == StdioType.terminal;

  /// Returns true  if a stream is attached to a terminal that supports ANSI escape sequences.
  bool get isEnabled => supportsAnsi && runsOnTerminal;
}
