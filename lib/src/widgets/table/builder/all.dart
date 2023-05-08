import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **AllBorderTableBuilder**
///
/// Builds a table with all borders.
///
/// Example:
/// ```dart
/// ┌───────────────┬───────────────┬───────────────┐
/// │Name           │Hex            │RGB            │
/// ├───────────────┼───────────────┼───────────────┤
/// │Red            │#ff0000        │(255, 0, 0)    │
/// ├───────────────┼───────────────┼───────────────┤
/// │Green          │#008000        │(0, 128, 0)    │
/// ├───────────────┼───────────────┼───────────────┤
/// │Blue           │#0000ff        │(0, 0, 255)    │
/// └───────────────┴───────────────┴───────────────┘
/// ```
class AllBorderTableBuilder extends AnsiTableBuilder {
  AllBorderTableBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  /// Returns the top horizontal border for the first row
  @override
  String get topBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeColored(border.style.boxDrawingSet.topLeftCorner, border.color);

    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(border.style.boxDrawingSet.horizontalLine * data[i].width, border.color);
      if (i != data.length - 1) {
        buffer.writeColored(border.style.boxDrawingSet.middleTopEdge, border.color);
      }
    }

    buffer
      ..writeColored(border.style.boxDrawingSet.topRightCorner, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns a row formatted with vertical borders
  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeColored(
        data.join(border.style.boxDrawingSet.verticalLine.colored(foreground: border.color)),
        border.color,
      )
      ..writeColored(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns the inline horizontal border for each row
  @override
  String get middleBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer()
      ..writeColored(
        border.style.boxDrawingSet.middleLeftEdge,
        border.color,
      );

    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );

      if (i != data.length - 1) {
        buffer.writeColored(border.style.boxDrawingSet.intersection, border.color);
      }
    }

    buffer
      ..writeColored(border.style.boxDrawingSet.middleRightEdge, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns the bottom border for the last row
  @override
  String get bottomBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeColored(border.style.boxDrawingSet.bottomLeftCorner, border.color);
    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );
      if (i != data.length - 1) {
        buffer.writeColored(border.style.boxDrawingSet.middleBottomEdge, border.color);
      }
    }

    buffer.writeColored(border.style.boxDrawingSet.bottomRightCorner, border.color);

    return buffer.toString();
  }
}
