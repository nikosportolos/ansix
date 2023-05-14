import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **OutsideVerticalBorderTableBuilder**
///
/// Builds a table with outside top and bottom borders only.
///
/// Example:
/// ```dart
/// ───────────────────────────────────────────────
///  Name           Hex            RGB
///  Red            #ff0000        (255, 0, 0)
///  Green          #008000        (0, 128, 0)
///  Blue           #0000ff        (0, 0, 255)
/// ───────────────────────────────────────────────
/// ```
class OutsideVerticalBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(border.style.boxDrawingSet.horizontalLine * data[i].width, border.color);
    }

    buffer.writeln();

    return buffer.toString();
  }

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeWithForegroundColor(data.join(''), border.color)
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
    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );
    }

    return buffer.toString();
  }
}
