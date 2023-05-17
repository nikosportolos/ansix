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
    super.style = const AnsiTextStyle(),
    super.padding = AnsiPadding.none,
    super.alignment = AnsiTextAlignment.left,
  }) : super(fixedWidth: width);
}
