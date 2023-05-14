import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **HeaderBorderTableBuilder**
///
/// Builds a table with borders only on the first row.
///
/// Example:
/// ```dart
/// ┌───────────────┬───────────────┬───────────────┐
/// │Name           │Hex            │RGB            │
/// └───────────────┴───────────────┴───────────────┘
///  Red             #ff0000         (255, 0, 0)
///  Green           #008000         (0, 128, 0)
///  Blue            #0000ff         (0, 0, 255)
/// ```
class HeaderBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.write(border.style.boxDrawingSet.topLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.style.boxDrawingSet.horizontalLine * data[i].width);
      if (i != data.length - 1) {
        buffer.write(
          border.style.boxDrawingSet.middleTopEdge,
        );
      }
    }

    buffer
      ..write(border.style.boxDrawingSet.topRightCorner)
      ..writeln();

    return buffer.toString().colored(foreground: border.color);
  }

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();
    final String separator = isFirstLine //
        ? border.style.boxDrawingSet.verticalLine.colored(foreground: border.color)
        : ' ';

    buffer
      ..write(separator)
      ..writeWithForegroundColor(data.join(separator), border.color)
      ..write(separator)
      ..writeln();

    return buffer.toString();
  }

  @override
  String get middleBorder {
    if (border.style == AnsiBorderStyle.none || !isFirstLine) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();

    buffer.write(border.style.boxDrawingSet.bottomLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.style.boxDrawingSet.horizontalLine * (data[i].width));

      if (i != data.length - 1) {
        buffer.write(border.style.boxDrawingSet.middleBottomEdge);
      }
    }

    buffer
      ..write(border.style.boxDrawingSet.bottomRightCorner)
      ..writeln();

    return buffer.toString().colored(foreground: border.color);
  }

  @override
  String get bottomBorder => '';

  @override
  String toString() {
    return (StringBuffer()
          ..write(isFirstLine ? topBorder : '')
          ..write(textLineBorder)
          ..write(isLastLine //
              ? ''
              : middleBorder))
        .toString();
  }
}
