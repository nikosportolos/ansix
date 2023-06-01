import 'dart:io';

/// **TerminalType**
enum TerminalType { unknown, bash, cmd, powershell }

/// **TerminalSize**
///
/// Provides information about the size of the attached terminal.
class TerminalSize {
  const TerminalSize({
    required this.columns,
    required this.lines,
  });

  final int columns;
  final int lines;

  static const TerminalSize $default = TerminalSize(columns: 80, lines: 24);

  @override
  String toString() => '($columns, $lines)';
}

/// **AnsiTerminal**
///
/// A library that provides information on the attached terminal.
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

  /// Returns the [TerminalSize] of the attached terminal.
  ///
  /// If no terminal is attached,
  /// the default terminal size (80, 24) will be returned instead.
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
