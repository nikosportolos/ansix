import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/text/text.dart';

/// **AnsiTableCell**
///
/// Represents a cell of the table.
///
/// - [alignment] How the text should be aligned horizontally inside the table cell.
/// - [style] Defines a set of text styles for the text.
/// - [foregroundColor] Foreground color of the text.
/// - [backgroundColor] Background color of the text.
/// - [padding] Used to pad the text with lines and whitespaces.
/// - [width] Used as a min constrain for the length of the text.
class AnsiTableCell {
  AnsiTableCell(
    final String text, {
    final int? fixedWidth,
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.style = const AnsiTextStyle(),
    this.padding = AnsiPadding.none,
    this.alignment = AnsiTextAlignment.left,
  }) : text = AnsiText(
          text,
          style: style,
          padding: padding,
          alignment: alignment,
          fixedWidth: fixedWidth,
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        );

  final AnsiText text;
  final AnsiColor foregroundColor;
  final AnsiColor backgroundColor;
  final AnsiTextStyle style;
  final AnsiPadding padding;
  final AnsiTextAlignment alignment;

  bool get isMultiline => text.isMultiline;
  int get width => text.width;

  @override
  String toString() {
    return text.toString();
  }
}
