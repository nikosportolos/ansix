import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/row/builder/builder.dart';

class InsideBorderRowBuilder extends AnsiRowBuilder {
  InsideBorderRowBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  /// Returns the top horizontal border for the first row
  @override
  String getTopBorder() {
    return '';
  }

  /// Returns a row formatted with vertical borders
  @override
  String getTextLineBorder() {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(
        data.join(border.boxDrawingSet.verticalLine.colored(foreground: border.color)),
        border.color,
      )
      ..writeln();

    return buffer.toString();
  }

  /// Returns the inline horizontal border for each row
  @override
  String getMiddleBorder() {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(
        border.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );

      if (i != data.length - 1) {
        buffer.writeColored(border.boxDrawingSet.cross, border.color);
      }
    }

    buffer.writeln();

    return buffer.toString();
  }

  /// Returns the bottom border for the last row
  @override
  String getBottomBorder() {
    return '';
  }
}
