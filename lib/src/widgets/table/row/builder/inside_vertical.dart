import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/row/builder/builder.dart';

class InsideVerticalBorderRowBuilder extends AnsiRowBuilder {
  InsideVerticalBorderRowBuilder({
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
          data.join(border.boxDrawingSet.verticalLine.colored(
            foreground: border.color,
          )),
          border.color)
      ..writeNewLine();

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
    return '';
  }
}
