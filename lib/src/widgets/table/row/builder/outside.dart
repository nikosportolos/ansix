import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/row/builder/builder.dart';

class OutsideBorderRowBuilder extends AnsiRowBuilder {
  OutsideBorderRowBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  /// Returns the top horizontal border for the first row
  @override
  String getTopBorder() {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeColored(border.boxDrawingSet.topLeftCorner, border.color);

    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(border.boxDrawingSet.horizontalLine * data[i].width, border.color);
    }

    buffer
      ..writeColored(border.boxDrawingSet.topRightCorner, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns a row formatted with vertical borders
  @override
  String getTextLineBorder() {
    final StringBuffer buffer = StringBuffer();

    buffer
      ..writeColored(border.boxDrawingSet.verticalLine, border.color)
      ..writeColored(data.join(''), border.color)
      ..writeColored(border.boxDrawingSet.verticalLine, border.color)
      ..writeln();

    return buffer.toString();
  }

  /// Returns the inline horizontal border for each row
  @override
  String getMiddleBorder() {
    return '';
  }

  /// Returns the bottom border for the last row
  @override
  String getBottomBorder() {
    if (border.style == AnsiBorderStyle.none) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();
    buffer.writeColored(border.boxDrawingSet.bottomLeftCorner, border.color);
    for (int i = 0; i < data.length; i++) {
      buffer.writeColored(
        border.boxDrawingSet.horizontalLine * (data[i].width),
        border.color,
      );
    }

    buffer.writeColored(border.boxDrawingSet.bottomRightCorner, border.color);

    return buffer.toString();
  }
}
