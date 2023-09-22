/// **AnsiEscapeCodes**
///
/// ANSI escape sequences are a standard for in-band signaling to control cursor location, color, font styling,
/// and other options on video text terminals and terminal emulators.
///
/// Certain sequences of bytes, most starting with an ASCII escape character and a bracket character, are embedded into text.
///
/// The terminal interprets these sequences as commands, rather than text to display verbatim.
///
/// https://en.wikipedia.org/wiki/ANSI_escape_code
abstract class AnsiEscapeCodes {
  /// Starts all the escape sequences.
  static const String escape = '\x1B';

  /// All attributes become turned off.
  static const String reset = '$escape[0m';
  static const String newLine = '\n';
  static const String tab = '\t';

  /// Starting ANSI code for bold style.
  static const String boldStartCode = '$escape[1m';

  /// Ending ANSI code for bold style.
  static const String boldEndCode = '$escape[22m';

  /// Starting ANSI code for dim style.
  static const String dimStartCode = '$escape[2m';

  /// Ending ANSI code for dim style.
  static const String dimEndCode = '$escape[22m';

  /// Starting ANSI code for italic style.
  static const String italicStartCode = '$escape[3m';

  /// Ending ANSI code for italic style.
  static const String italicEndCode = '$escape[23m';

  /// Starting ANSI code for underline style.
  static const String underlineStartCode = '$escape[4m';

  /// Ending ANSI code for underline style.
  static const String underlineEndCode = '$escape[24m';

  /// Starting ANSI code for bold-underline style.
  static const String boldUnderlineStartCode = '$escape[21m';

  /// Ending ANSI code for bold-underline style.
  static const String boldUnderlineEndCode = '$escape[24m';

  /// Starting ANSI code for inverse style.
  static const String inverseStartCode = '$escape[7m';

  /// Ending ANSI code for inverse style.
  static const String inverseEndCode = '$escape[27m';

  /// Starting ANSI code for strikethrough style.
  static const String strikethroughStartCode = '$escape[9m';

  /// Ending ANSI code for strikethrough style.
  static const String strikethroughEndCode = '$escape[29m';

  /// ANSI escape sequence used to apply 8-bit (256-color) ANSI foreground colors in a terminal.
  /// The "38" part of the sequence refers to the foreground color, and the "5" indicates that we're using 8-bit colors.
  static const String foregroundColorStartCode = '$escape[38;5;';

  /// ANSI escape sequence used to apply 8-bit (256-color) ANSI foreground colors in a terminal.
  /// The "48" part of the sequence refers to the background color, and the "5" indicates that we're using 8-bit colors.
  static const String backgroundColorStartCode = '$escape[48;5;';

  /// ANSI escape sequence used to specify a 24-bit RGB color value in decimal notation.
  /// The first number after the escape sequence represents the red value, the second number represents the green value,
  /// and the third number represents the blue value, all in the range of 0 to 255.
  /// The "38" part of the sequence refers to the foreground color, and the "2" indicates that we're using 24-bit colors.
  static const String foregroundRgbColorStartCode = '$escape[38;2;';

  /// ANSI escape sequence used to specify a 24-bit RGB color value in decimal notation.
  /// The first number after the escape sequence represents the red value, the second number represents the green value,
  /// and the third number represents the blue value, all in the range of 0 to 255.
  /// The "48" part of the sequence refers to the background color, and the "2" indicates that we're using 24-bit colors.
  static const String backgroundRgbColorStartCode = '$escape[48;2;';

  /// Ending ANSI code for colors.
  static const String colorEndCode = 'm';

  /// Moves the cursor left (but may "backwards wrap" if cursor is at start of line).
  static const String backspace = '\b$cleanFromCursorToEnd';
  static const String cleanAll = '\x1b[2J';
  static const String cleanLine = '\x1b[2K';
  static const String cleanFromCursorToEnd = '\x1b[K';

  /// Hides cursor from terminal.
  static const String cursorHide = '\x1b[?25l';

  /// Shows cursor in terminal.
  static const String cursorShow = '\x1b[?25h';

  static const String cursorMoveLeft = '\x1b[D';
  static const String cursorMoveRight = '\x1b[C';
  static const String cursorMoveUp = '\x1b[A';
  static const String cursorMoveDown = '\x1b[B';

  static const String cursorResetPosition = '\x1b[H';
}
