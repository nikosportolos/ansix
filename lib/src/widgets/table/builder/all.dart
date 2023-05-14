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
  /// Returns the top horizontal border for the first row
  @override
  String get topBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeWithForegroundColor(border.style.boxDrawingSet.topLeftCorner, border.color);

    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(border.style.boxDrawingSet.horizontalLine * data[i].width, border.color);
      if (i != data.length - 1) {
        buffer.writeWithForegroundColor(border.style.boxDrawingSet.middleTopEdge, border.color);
      }
    }

    buffer
      ..writeWithForegroundColor(border.style.boxDrawingSet.topRightCorner, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns a row formatted with vertical borders
  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeWithForegroundColor(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeWithForegroundColor(
        data.join(border.style.boxDrawingSet.verticalLine.colored(foreground: border.color)),
        border.color,
      )
      ..writeWithForegroundColor(border.style.boxDrawingSet.verticalLine, border.color)
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
      ..writeWithForegroundColor(
        border.style.boxDrawingSet.middleLeftEdge,
        border.color,
      );

    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );

      if (i != data.length - 1) {
        buffer.writeWithForegroundColor(border.style.boxDrawingSet.intersection, border.color);
      }
    }

    buffer
      ..writeWithForegroundColor(border.style.boxDrawingSet.middleRightEdge, border.color)
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
    buffer.writeWithForegroundColor(border.style.boxDrawingSet.bottomLeftCorner, border.color);
    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );
      if (i != data.length - 1) {
        buffer.writeWithForegroundColor(border.style.boxDrawingSet.middleBottomEdge, border.color);
      }
    }

    buffer.writeWithForegroundColor(border.style.boxDrawingSet.bottomRightCorner, border.color);

    return buffer.toString();
  }
}
