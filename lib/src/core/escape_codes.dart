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
  static const String escape = '\x1B';
  static const String reset = '$escape[0m';
  static const String newLine = '\n';

  static const String boldStartCode = '$escape[1m';
  static const String boldEndCode = '$escape[22m';

  static const String dimStartCode = '$escape[2m';
  static const String dimEndCode = '$escape[22m';

  static const String italicStartCode = '$escape[3m';
  static const String italicEndCode = '$escape[23m';

  static const String underlineStartCode = '$escape[4m';
  static const String underlineEndCode = '$escape[24m';

  static const String boldUnderlineStartCode = '$escape[21m';
  static const String boldUnderlineEndCode = '$escape[24m';

  static const String inverseStartCode = '$escape[7m';
  static const String inverseEndCode = '$escape[27m';

  static const String strikethroughStartCode = '$escape[9m';
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
  static const String colorEndCode = 'm';

  static const String backspace = '\b$cleanFromCursorToEnd';
  static const String cleanAll = '\x1b[2J';
  static const String cleanLine = '\x1b[2K';
  static const String cleanFromCursorToEnd = '\x1b[K';

  static const String cursorHide = '\x1b[?25l';
  static const String cursorShow = '\x1b[?25h';

  static const String cursorMoveLeft = '\x1b[D';
  static const String cursorMoveRight = '\x1b[C';
  static const String cursorMoveUp = '\x1b[A';
  static const String cursorMoveDown = '\x1b[B';

  static const String cursorResetPosition = '\x1b[H';
}
