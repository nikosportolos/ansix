import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/widgets/text/text.dart';

import 'builders.dart';

export 'all.dart';
export 'header.dart';
export 'inside.dart';
export 'inside_horizontal.dart';
export 'inside_vertical.dart';
export 'no_border.dart';
export 'outside.dart';

abstract class AnsiTableBuilder {
  final StringBuffer buffer = StringBuffer();
  late final List<AnsiText> data;
  late final AnsiBorder border;
  late final bool isFirstLine;
  late final bool isLastLine;

  /// Returns the top horizontal border for the first row
  String get topBorder;

  /// Returns a row formatted with vertical borders
  String get textLineBorder;

  /// Returns the inline horizontal border for each row
  String get middleBorder;

  /// Returns the bottom border for the last row
  String get bottomBorder;

  static AnsiTableBuilder fromBorderType(final AnsiBorderType type) {
    switch (type) {
      case AnsiBorderType.all:
        return AllBorderTableBuilder();

      case AnsiBorderType.header:
        return HeaderBorderTableBuilder();

      case AnsiBorderType.inside:
        return InsideBorderTableBuilder();

      case AnsiBorderType.insideHorizontal:
        return InsideHorizontalBorderTableBuilder();

      case AnsiBorderType.insideVertical:
        return InsideVerticalBorderTableBuilder();

      case AnsiBorderType.none:
        return NoBorderTableBuilder();

      case AnsiBorderType.outside:
        return OutsideBorderTableBuilder();

      case AnsiBorderType.outsideHorizontal:
        return OutsideHorizontalBorderTableBuilder();

      case AnsiBorderType.outsideVertical:
        return OutsideVerticalBorderTableBuilder();
    }
  }

  @override
  String toString() {
    return (StringBuffer()
          ..write(isFirstLine ? topBorder : '')
          ..write(textLineBorder)
          ..write(isLastLine //
              ? bottomBorder
              : middleBorder))
        .toString();
  }
}
