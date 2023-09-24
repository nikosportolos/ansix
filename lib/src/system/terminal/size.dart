/// **TerminalSize**
///
/// Provides information about the size of the attached terminal.
class TerminalSize {
  const TerminalSize({
    required this.columns,
    required this.lines,
  });

  /// The number of columns of the terminal.
  final int columns;

  /// The number of lines of the terminal.
  final int lines;

  /// Returns the default [TerminalSize] (80x24).
  static const TerminalSize $default = TerminalSize(columns: 80, lines: 24);

  @override
  String toString() => '($columns, $lines)';
}
