import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatter.dart';

/// **AnsiTextFormatter**
///
/// Returns the given text with the specified styles and colors.
class AnsiTextFormatter implements TextFormatter {
  /// Returns the given [text] with the selected [style].
  @override
  String withStyle(
    final String text,
    final AnsiStyle style,
  ) {
    // if (text.isEmpty) {
    //   return '';
    // }

    return '${style.startEscapeCode}$text${style.endEscapeCode}';
  }

  /// Returns the given [text] with [foreground] or/and [background] colors.
  @override
  String withColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    // if (text.isEmpty) {
    //   return '';
    // }

    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    return '${foreground.foreground}${background.background}$text${AnsiEscapeCodes.reset}';
  }

  /// Returns the given [text] with [foreground] or/and [background] [Rgb] colors.
  @override
  String withColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    // if (text.isEmpty) {
    //   return '';
    // }

    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    return '${foreground.foregroundRgb}${background.backgroundRgb}$text${AnsiEscapeCodes.reset}';
  }
}
