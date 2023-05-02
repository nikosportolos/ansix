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

  /// Faint, decreased intensity, or dim
  dim(
    startEscapeCode: dimStartCode,
    endEscapeCode: dimEndCode,
  ),

  italic(
    startEscapeCode: italicStartCode,
    endEscapeCode: italicEndCode,
  ),

  underline(
    startEscapeCode: underlineStartCode,
    endEscapeCode: underlineEndCode,
  ),

  boldUnderline(
    startEscapeCode: boldUnderlineStartCode,
    endEscapeCode: boldUnderlineEndCode,
  ),

  strikethrough(
    startEscapeCode: strikethroughStartCode,
    endEscapeCode: strikethroughEndCode,
  ),

  normal(
    startEscapeCode: '',
    endEscapeCode: '',
  ),

  inverse(
    startEscapeCode: inverseStartCode,
    endEscapeCode: inverseEndCode,
  );

  const AnsiStyle({
    required this.startEscapeCode,
    required this.endEscapeCode,
  });

  final String startEscapeCode;
  final String endEscapeCode;
}
