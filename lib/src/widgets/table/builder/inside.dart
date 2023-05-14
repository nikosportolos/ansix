import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **InsideBorderTableBuilder**
///
/// Builds a table with inside vertical and horizontal borders.
///
/// Example:
/// ```dart
/// Name           │Hex            │RGB
/// ───────────────┼───────────────┼───────────────
/// Red            │#ff0000        │(255, 0, 0)
/// ───────────────┼───────────────┼───────────────
/// Green          │#008000        │(0, 128, 0)
/// ───────────────┼───────────────┼───────────────
/// Blue           │#0000ff        │(0, 0, 255)
/// ```
class InsideBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder => '';

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeWithForegroundColor(
        data.join(border.style.boxDrawingSet.verticalLine.colored(foreground: border.color)),
        border.color,
      )
      ..writeln();

    return buffer.toString();
  }

  @override
  String get middleBorder {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < data.length; i++) {
      buffer.writeWithForegroundColor(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );

      if (i != data.length - 1) {
        buffer.writeWithForegroundColor(border.style.boxDrawingSet.intersection, border.color);
      }
    }

    buffer.writeln();

    return buffer.toString();
  }

  @override
  String get bottomBorder => '';
}
