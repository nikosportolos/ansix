import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/text/padding.dart';
import 'package:ansix/src/widgets/text/text_style.dart';
import 'package:ansix/src/widgets/text/text_theme.dart';

export 'text_theme.dart';

class AnsiText {
  AnsiText(
    final String text, {
    this.textAlignment = AnsiTextAlignment.left,
    this.textStyle = const AnsiTextStyle(),
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.padding = AnsiPadding.none,
    final int? fixedWidth,
  }) : text = text.replaceAll(RegExp(r'\[(.*?)m'), '') {
    final int minWidth = this.text.length + padding.left + padding.right;
    width = (fixedWidth == null || fixedWidth == 0 || fixedWidth < minWidth) ? minWidth : fixedWidth;
    // width = fixedWidth ?? minWidth;

    final int topPadding = padding.top;
    final int bottomPadding = padding.bottom;
    late final int leftPadding;
    late final int rightPadding;

    switch (textAlignment) {
      case AnsiTextAlignment.left:
        leftPadding = padding.left;
        rightPadding = width - padding.left - this.text.length;
        break;
      case AnsiTextAlignment.center:
        final int paddedWidth = width + padding.left + padding.right;
        leftPadding = (paddedWidth / 2 - this.text.length / 2 - padding.left).floor();
        rightPadding = width - this.text.length - leftPadding;
        break;
      case AnsiTextAlignment.right:
        leftPadding = width - padding.right - this.text.length;
        rightPadding = padding.right;
        break;
    }

    formattedText = (StringBuffer()
          ..writeLines(topPadding)
          ..writeSpaces(leftPadding, backgroundColor)
          ..writeStyled(
            text,
            textStyle: textStyle,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
          )
          ..writeSpaces(rightPadding, backgroundColor)
          ..writeLines(bottomPadding))
        .toString();
  }

  final String text;
  final AnsiColor foregroundColor;
  final AnsiColor backgroundColor;
  final AnsiTextStyle textStyle;
  final AnsiPadding padding;
  final AnsiTextAlignment textAlignment;

  late final int width;
  late final String formattedText;

  factory AnsiText.withTheme(final String text, final AnsiTextTheme theme) {
    return AnsiText(
      text,
      foregroundColor: theme.foregroundColor,
      backgroundColor: theme.backgroundColor,
      textStyle: theme.textStyle,
      textAlignment: theme.textAlignment,
      padding: theme.padding,
      fixedWidth: theme.fixedWidth,
    );
  }

  @override
  String toString() {
    return formattedText;
  }
}
