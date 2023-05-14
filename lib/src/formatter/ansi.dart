import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/theme/style.dart';

/// **AnsiTextFormatter**
///
/// Returns the given text with the specified styles and colors.
class AnsiTextFormatter implements TextFormatter {
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

    return '${foreground.foreground}${background.background}$text$reset';
  }

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

    return '${foreground.foregroundRgb}${background.backgroundRgb}$text$reset';
  }
}
