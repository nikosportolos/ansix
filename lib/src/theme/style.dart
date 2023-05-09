import 'package:ansix/src/core/escape_codes.dart';

/// **AnsiStyle**
///
/// ANSI style is a set of formatting codes that can be used to change the appearance of text in a terminal.
///
/// These codes include things like bold, italic, underline, and strikethrough, as well as
/// control codes for things like cursor movement and clearing the screen.
///
/// ANSI style codes are supported by most terminal emulators
/// and are commonly used in command-line interfaces and text-based programs.
///
/// https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
/// https://en.wikipedia.org/wiki/ANSI_escape_code
/// https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes
enum AnsiStyle {
  /// Bold or increased intensity
  bold(boldStartCode, boldEndCode),

  boldUnderline(boldUnderlineStartCode, boldUnderlineEndCode),

  /// Faint, decreased intensity, or dim
  dim(dimStartCode, dimEndCode),

  inverse(inverseStartCode, inverseEndCode),

  italic(italicStartCode, italicEndCode),

  normal('', ''),

  strikethrough(strikethroughStartCode, strikethroughEndCode),

  underline(underlineStartCode, underlineEndCode);

  const AnsiStyle(
    this.startEscapeCode,
    this.endEscapeCode,
  );

  final String startEscapeCode;
  final String endEscapeCode;
}
