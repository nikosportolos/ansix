import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

class StandardTextFormatter extends TextFormatter {
  @override
  String addStyle(final String text, final AnsiStyle style) {
    return text;
  }

  @override
  String addColor(
    final String text, {
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    return text;
  }

  @override
  String addColorRgb(
    final String text, {
    final AnsiColor? foreground,
    final AnsiColor? background,
  }) {
    return text;
  }
}
