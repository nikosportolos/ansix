import 'package:ansix/src/formatter/formatter.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

/// **StandardTextFormatter**
///
/// Returns the original text with no styles or colors.
///
/// Used when ANSI formatting is not supported.
class StandardTextFormatter extends TextFormatter {
  /// Returns the given [text] with no styling.
  @override
  String withStyle(
    final String text,
    final AnsiStyle style,
  ) {
    return text;
  }

  /// Returns the given [text] with no colors.
  @override
  String withColor(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return text;
  }

  /// Returns the given [text] with no colors.
  @override
  String withColorRgb(
    final String text, {
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return text;
  }
}
