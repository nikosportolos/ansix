import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/row/builder/builder.dart';

class HeaderBorderRowBuilder extends AnsiRowBuilder {
  HeaderBorderRowBuilder({
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
    buffer.write(border.boxDrawingSet.topLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.boxDrawingSet.horizontalLine * data[i].width);
      if (i != data.length - 1) {
        buffer.write(
          border.boxDrawingSet.crossDown,
        );
      }
    }

    buffer
      ..write(border.boxDrawingSet.topRightCorner)
      ..writeln();

    return buffer.toString().colored(foreground: border.color);
  }

  /// Returns a row formatted with vertical borders
  @override
  String getTextLineBorder() {
    final StringBuffer buffer = StringBuffer();
    final String separator = isFirstLine //
        ? border.boxDrawingSet.verticalLine.colored(foreground: border.color)
        : ' ';

    buffer
      ..write(separator)
      ..writeColored(data.join(separator), border.color)
      ..write(separator)
      ..writeln();

    return buffer.toString();
  }

  /// Returns the inline horizontal border for each row
  @override
  String getMiddleBorder() {
    if (border.style == AnsiBorderStyle.none || !isFirstLine) {
      return '';
    }

    final StringBuffer buffer = StringBuffer();

    buffer.write(border.boxDrawingSet.bottomLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.boxDrawingSet.horizontalLine * (data[i].width));

      if (i != data.length - 1) {
        buffer.write(border.boxDrawingSet.crossUp);
      }
    }

    buffer
      ..write(border.boxDrawingSet.bottomRightCorner)
      ..writeln();

    return buffer.toString().colored(foreground: border.color);
  }

  /// Returns the bottom border for the last row
  @override
  String getBottomBorder() {
    return '';
  }

  @override
  String toString() {
    return (StringBuffer()
          ..write(isFirstLine ? getTopBorder() : '')
          ..write(getTextLineBorder())
          ..write(isLastLine //
              ? ''
              : getMiddleBorder()))
        .toString();
  }
}
