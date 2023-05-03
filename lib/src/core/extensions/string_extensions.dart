import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/theme/color/color.dart';
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

  String colored({final AnsiColor? foreground, final AnsiColor? background}) {
    return AnsiX.formatter.addColor(
      this,
      foreground: foreground,
      background: background,
    );
  }

  String coloredRgb({final AnsiColor? foreground, final AnsiColor? background}) {
    return AnsiX.formatter.addColorRgb(
      this,
      foreground: foreground,
      background: background,
    );
  }
}
