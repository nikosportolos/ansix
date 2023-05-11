import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';

extension AnsiString on String {
  String bold() => addStyle(AnsiStyle.bold);

  String italic() => addStyle(AnsiStyle.italic);

  String underline() => addStyle(AnsiStyle.underline);

  String strikethrough() => addStyle(AnsiStyle.strikethrough);

  String addStyle(final AnsiStyle style) {
    return AnsiX.formatter.addStyle(this, style);
  }

  String styled(
    final AnsiTextStyle textStyle, [
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  ]) {
    String text = this;
    for (final AnsiStyle style in textStyle.styles) {
      text = text.addStyle(style);
    }
    return text.colored(
      foreground: foreground,
      background: background,
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

  String withForegroundColor(final AnsiColor color) {
    return AnsiX.formatter.addColor(this, foreground: color);
  }

  String withBackgroundColor(final AnsiColor color) {
    return AnsiX.formatter.addColor(this, background: color);
  }

  String colored({
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return AnsiX.formatter.addColor(
      this,
      foreground: foreground,
      background: background,
    );
  }

  String coloredRgb({
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return AnsiX.formatter.addColorRgb(
      this,
      foreground: foreground,
      background: background,
    );
  }
}
