import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

abstract class TextFormatter {
  /// Returns the given [text] with the selected [style].
  String withStyle(
    final String text,
    final AnsiStyle style,
  );

  /// Returns the given [text] with [foreground] or/and [background] colors.
  String withColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });

  /// Returns the given [text] with [foreground] or/and [background] [Rgb] colors.
  String withColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  });
}
