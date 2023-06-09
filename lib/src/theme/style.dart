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
  bold(
    AnsiEscapeCodes.boldStartCode,
    AnsiEscapeCodes.boldEndCode,
  ),

  /// Doubly underlined; or: not bold
  ///
  /// Double-underline per ECMA-48, but instead disables bold intensity on several terminals,
  /// including in the Linux kernel's console before version 4.17.
  boldUnderline(
    AnsiEscapeCodes.boldUnderlineStartCode,
    AnsiEscapeCodes.boldUnderlineEndCode,
  ),

  /// Faint, decreased intensity, or dim
  dim(
    AnsiEscapeCodes.dimStartCode,
    AnsiEscapeCodes.dimEndCode,
  ),

  inverse(
    AnsiEscapeCodes.inverseStartCode,
    AnsiEscapeCodes.inverseEndCode,
  ),

  italic(
    AnsiEscapeCodes.italicStartCode,
    AnsiEscapeCodes.italicEndCode,
  ),

  normal('', ''),

  strikethrough(
    AnsiEscapeCodes.strikethroughStartCode,
    AnsiEscapeCodes.strikethroughEndCode,
  ),

  underline(
    AnsiEscapeCodes.underlineStartCode,
    AnsiEscapeCodes.underlineEndCode,
  );

  const AnsiStyle(
    this.startEscapeCode,
    this.endEscapeCode,
  );

  final String startEscapeCode;
  final String endEscapeCode;
}
