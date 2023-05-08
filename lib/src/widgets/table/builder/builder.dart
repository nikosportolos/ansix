import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/widgets/text/text.dart';

export 'all.dart';
export 'header.dart';
export 'inside.dart';
export 'inside_horizontal.dart';
export 'inside_vertical.dart';
export 'no_border.dart';
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
  String get topBorder;

  /// Returns a row formatted with vertical borders
  String get textLineBorder;

  /// Returns the inline horizontal border for each row
  String get middleBorder;

  /// Returns the bottom border for the last row
  String get bottomBorder;

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
