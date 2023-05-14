import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

abstract class TextFormatter {
  String withStyle(
    final String text,
    final AnsiStyle style,
  );

  String withColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });

  String withColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });
}
