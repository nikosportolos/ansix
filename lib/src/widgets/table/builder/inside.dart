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
  InsideBorderTableBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  @override
  String get topBorder => '';

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(
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
      buffer.writeColored(
        border.style.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );

      if (i != data.length - 1) {
        buffer.writeColored(border.style.boxDrawingSet.intersection, border.color);
      }
    }

    buffer.writeln();

    return buffer.toString();
  }

  @override
  String get bottomBorder => '';
}
