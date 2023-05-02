import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

extension AnsiTextX on String {
  String bold() => addStyle(AnsiStyle.bold);

  String italic() => addStyle(AnsiStyle.italic);

  String underline() => addStyle(AnsiStyle.underline);

  String strikethrough() => addStyle(AnsiStyle.strikethrough);

  String addStyle(final AnsiStyle style) {
    return '${style.startEscapeCode}$this${style.endEscapeCode}';
  }

  String styled(
    final List<AnsiStyle> styles, [
    final AnsiColor? foregroundColor,
    final AnsiColor? backgroundColor,
  ]) {
    String text = this;
    for (final AnsiStyle style in styles) {
      text = text.addStyle(style);
    }
    return text.colored(
      foreground: foregroundColor,
      background: backgroundColor,
    );
  }

  String black() => colored(foreground: AnsiColor.black);

  String red() => colored(foreground: AnsiColor.red);

  String green() => colored(foreground: AnsiColor.green);

  String yellow() => colored(foreground: AnsiColor.yellow);

  String blue() => colored(foreground: AnsiColor.blue);

  String fuchsia() => colored(foreground: AnsiColor.fuchsia);

  String aqua() => colored(foreground: AnsiColor.aqua);

  String white() => colored(foreground: AnsiColor.white);

  String colored({
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return this;
    }

    final String foregroundString = foreground?.foreground ?? AnsiColor.none.foreground;
    final String backgroundString = background?.background ?? AnsiColor.none.background;

    return '$foregroundString$backgroundString$this$reset';
  }

  String coloredRgb({
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    if (foreground == AnsiColor.none && background == AnsiColor.none) {
      return this;
    }

    final String foregroundString = foreground?.foregroundRgb ?? AnsiColor.none.foregroundRgb;
    final String backgroundString = background?.backgroundRgb ?? AnsiColor.none.backgroundRgb;

    return '$foregroundString$backgroundString$this$reset';
  }
}
