import 'package:ansix/src/core/constants.dart';

/// https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797
/// https://en.wikipedia.org/wiki/ANSI_escape_code
/// https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes
enum AnsiStyle {
  /// Bold or increased intensity
  bold(
    startEscapeCode: boldStartCode,
    endEscapeCode: boldEndCode,
  ),

  boldUnderline(
    startEscapeCode: boldUnderlineStartCode,
    endEscapeCode: boldUnderlineEndCode,
  ),

  /// Faint, decreased intensity, or dim
  dim(
    startEscapeCode: dimStartCode,
    endEscapeCode: dimEndCode,
  ),

  inverse(
    startEscapeCode: inverseStartCode,
    endEscapeCode: inverseEndCode,
  ),

  italic(
    startEscapeCode: italicStartCode,
    endEscapeCode: italicEndCode,
  ),

  normal(
    startEscapeCode: '',
    endEscapeCode: '',
  ),

  strikethrough(
    startEscapeCode: strikethroughStartCode,
    endEscapeCode: strikethroughEndCode,
  ),

  underline(
    startEscapeCode: underlineStartCode,
    endEscapeCode: underlineEndCode,
  );

  const AnsiStyle({
    required this.startEscapeCode,
    required this.endEscapeCode,
  });

  final String startEscapeCode;
  final String endEscapeCode;
}
