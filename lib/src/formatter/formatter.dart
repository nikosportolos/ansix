import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

abstract class TextFormatter {
  String addStyle(
    final String text,
    final AnsiStyle style,
  );

  String addColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });

  String addColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });
}
