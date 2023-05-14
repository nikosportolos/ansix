import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **InsideVerticalBorderTableBuilder**
///
/// Builds a table with inside vertical borders.
///
/// Example:
/// ```dart
/// Name           │Hex            │RGB
/// Red            │#ff0000        │(255, 0, 0)
/// Green          │#008000        │(0, 128, 0)
/// Blue           │#0000ff        │(0, 0, 255)
/// ```
class InsideVerticalBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder => '';

  @override
  String get textLineBorder {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(
          data.join(border.style.boxDrawingSet.verticalLine.colored(
            foreground: border.color,
          )),
          border.color)
      ..writeln();

    return buffer.toString();
  }

  @override
  String get middleBorder => '';

  @override
  String get bottomBorder => '';
}
