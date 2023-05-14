import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';

extension AnsiString on String {
  String withStyle(final AnsiStyle style) {
    return AnsiX.formatter.withStyle(this, style);
  }

  String styled(
    final AnsiTextStyle textStyle, [
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  ]) {
    String text = this;
    for (final AnsiStyle style in textStyle.styles) {
      text = text.withStyle(style);
    }
    return text.colored(
      foreground: foreground,
      background: background,
    );
  }

  String withForegroundColor(final AnsiColor color) {
    return AnsiX.formatter.withColor(this, foreground: color);
  }

  String withBackgroundColor(final AnsiColor color) {
    return AnsiX.formatter.withColor(this, background: color);
  }

  String colored({
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return AnsiX.formatter.withColor(
      this,
      foreground: foreground,
      background: background,
    );
  }

  String coloredRgb({
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return AnsiX.formatter.withColorRgb(
      this,
      foreground: foreground,
      background: background,
    );
  }
}

extension AnsiXShortcuts on String {
  String bold() => withStyle(AnsiStyle.bold);

  String italic() => withStyle(AnsiStyle.italic);

  String underline() => withStyle(AnsiStyle.underline);

  String strikethrough() => withStyle(AnsiStyle.strikethrough);

  String black() => colored(foreground: AnsiColor.black);

  String red() => colored(foreground: AnsiColor.red);

  String green() => colored(foreground: AnsiColor.green);

  String yellow() => colored(foreground: AnsiColor.yellow);

  String blue() => colored(foreground: AnsiColor.blue);

  String fuchsia() => colored(foreground: AnsiColor.fuchsia);

  String aqua() => colored(foreground: AnsiColor.aqua);

  String white() => colored(foreground: AnsiColor.white);
}
