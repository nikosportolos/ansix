import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/text/padding.dart';
import 'package:ansix/src/widgets/text/text.dart';
import 'package:ansix/src/widgets/text/text_style.dart';

class AnsiTableCell extends AnsiText {
  AnsiTableCell(
    super.text, {
    required final int width,
    super.foregroundColor = AnsiColor.none,
    super.backgroundColor = AnsiColor.none,
    super.textStyle = const AnsiTextStyle(),
    super.padding = AnsiPadding.none,
    super.textAlignment = AnsiTextAlignment.left,
  }) : super(fixedWidth: width);
}
