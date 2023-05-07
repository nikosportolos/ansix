import 'package:ansix/src/theme/border/border.dart';
import 'package:ansix/src/widgets/text/text.dart';

export 'all.dart';
export 'header.dart';
export 'inside.dart';
export 'inside_horizontal.dart';
export 'inside_vertical.dart';
export 'none.dart';
export 'outside.dart';

abstract class AnsiTableBuilder {
  AnsiTableBuilder({
    required this.data,
    required this.border,
    required this.isFirstLine,
    required this.isLastLine,
  });

  final StringBuffer buffer = StringBuffer();
  final List<AnsiText> data;
  final AnsiBorder border;
  final bool isFirstLine;
  final bool isLastLine;

  /// Returns the top horizontal border for the first row
  String getTopBorder();

  /// Returns a row formatted with vertical borders
  String getTextLineBorder();

  /// Returns the inline horizontal border for each row
  String getMiddleBorder();

  /// Returns the bottom border for the last row
  String getBottomBorder();

  @override
  String toString() {
    return (StringBuffer()
          ..write(isFirstLine ? getTopBorder() : '')
          ..write(getTextLineBorder())
          ..write(isLastLine //
              ? getBottomBorder()
              : getMiddleBorder()))
        .toString();
  }
}
