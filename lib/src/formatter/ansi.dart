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
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    final String foregroundString = foreground?.foreground ?? AnsiColor.none.foreground;
    final String backgroundString = background?.background ?? AnsiColor.none.background;

    return '$foregroundString$backgroundString$text$reset';
  }

  @override
  String addColorRgb(
    final String text, {
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return text;
    }

    final String foregroundString = foreground?.foregroundRgb ?? AnsiColor.none.foregroundRgb;
    final String backgroundString = background?.backgroundRgb ?? AnsiColor.none.backgroundRgb;

    return '$foregroundString$backgroundString$text$reset';
  }
}
