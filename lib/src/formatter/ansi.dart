import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/theme/style.dart';

class AnsiTextFormatter implements TextFormatter {
  @override
  String addStyle(final String text, final AnsiStyle style) {
    return '${style.startEscapeCode}$text${style.endEscapeCode}';
  }

  @override
  String addColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    return '${foreground.foreground}${background.background}$text$reset';
  }

  @override
  String addColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    return '${foreground.foregroundRgb}${background.backgroundRgb}$text$reset';
  }
}
