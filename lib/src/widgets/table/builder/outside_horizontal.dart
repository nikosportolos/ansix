import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **OutsideHorizontalBorderTableBuilder**
///
/// Builds a table with outside borders only.
///
/// Example:
/// ```dart
/// │Name           Hex            RGB            │
/// │Red            #ff0000        (255, 0, 0)    │
/// │Green          #008000        (0, 128, 0)    │
/// │Blue           #0000ff        (0, 0, 255)    │
/// ```
class OutsideHorizontalBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder {
    return '';
  }

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeWithForegroundColor(border.style.boxDrawingSet.verticalLine, border.color)
      ..writeWithForegroundColor(data.join(' '), border.color)
      ..writeWithForegroundColor(border.style.boxDrawingSet.verticalLine, border.color);

    if (!isLastLine) {
      buffer.writeln();
    }

    return buffer.toString();
  }

  @override
  String get middleBorder => '';

  @override
  String get bottomBorder {
    return '';
  }
}
