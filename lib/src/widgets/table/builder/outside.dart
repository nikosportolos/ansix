import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **OutsideBorderTableBuilder**
///
/// Builds a table with outside borders only.
///
/// Example:
/// ```dart
/// ┌─────────────────────────────────────────────┐
/// │Name           Hex            RGB            │
/// │Red            #ff0000        (255, 0, 0)    │
/// │Green          #008000        (0, 128, 0)    │
/// │Blue           #0000ff        (0, 0, 255)    │
/// └─────────────────────────────────────────────┘
/// ```
class OutsideBorderTableBuilder extends AnsiTableBuilder {
  OutsideBorderTableBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  @override
  String get topBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeColored(border.style.boxDrawingSet.topLeftCorner, border.color);

    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(border.style.boxDrawingSet.horizontalLine * data[i].width, border.color);
    }

    buffer
      ..writeColored(border.style.boxDrawingSet.topRightCorner, border.color)
      ..writeln();

    return buffer.toString();
  }

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeColored(data.join(''), border.color)
      ..writeColored(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeln();

    return buffer.toString();
  }

  @override
  String get middleBorder => '';

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
    }

    buffer.writeColored(border.style.boxDrawingSet.bottomRightCorner, border.color);

    return buffer.toString();
  }
}
