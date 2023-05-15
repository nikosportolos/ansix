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
}
