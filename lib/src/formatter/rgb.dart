import 'package:ansix/src/core/escape_codes.dart';
import 'package:ansix/src/formatter/ansi.dart';
import 'package:ansix/src/theme/color/color.dart';

class RgbTextFormatter extends AnsiTextFormatter {
  /// Returns the given [text] with [foreground] or/and [background] colors.
  @override
  String withColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    if (text.isEmpty) {
      return '';
    }

    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    if (background == AnsiColor.none) {
      return '${foreground.foregroundRgb}$text${AnsiEscapeCodes.reset}';
    }

    if (foreground == AnsiColor.none) {
      return '${background.backgroundRgb}$text${AnsiEscapeCodes.reset}';
    }

    return '${foreground.foregroundRgb}${background.backgroundRgb}$text${AnsiEscapeCodes.reset}';
  }
}
