import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

/// Defines whether ANSI colors should be formatted
/// using the terminal code or the RGB value.
enum ColorFormat { ansi, rgb }

/// Defines how the given text should be printed.
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
}
