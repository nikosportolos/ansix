import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';

class HeaderBorderTableBuilder extends AnsiTableBuilder {
  HeaderBorderTableBuilder({
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
    buffer.write(border.style.boxDrawingSet.topLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.style.boxDrawingSet.horizontalLine * data[i].width);
      if (i != data.length - 1) {
        buffer.write(
          border.style.boxDrawingSet.crossDown,
        );
      }
    }

    buffer
      ..write(border.style.boxDrawingSet.topRightCorner)
      ..writeln();

    return buffer.toString().colored(foreground: border.color);
  }

  /// Returns a row formatted with vertical borders
  @override
  String getTextLineBorder() {
    final StringBuffer buffer = StringBuffer();
    final String separator = isFirstLine //
        ? border.style.boxDrawingSet.verticalLine.colored(foreground: border.color)
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

    buffer.write(border.style.boxDrawingSet.bottomLeftCorner);

    for (int i = 0; i < data.length; i++) {
      buffer.write(border.style.boxDrawingSet.horizontalLine * (data[i].width));

      if (i != data.length - 1) {
        buffer.write(border.style.boxDrawingSet.crossUp);
      }
    }

    buffer
      ..write(border.style.boxDrawingSet.bottomRightCorner)
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
