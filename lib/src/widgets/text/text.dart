import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/text/theme.dart';

export 'theme.dart';

class AnsiText {
  AnsiText(
    this.text, {
    this.textAlignment = AnsiTextAlignment.left,
    this.textStyle = const AnsiTextStyle(),
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.padding = AnsiPadding.none,
    final int? fixedWidth,
  }) {
    final int minWidth = text.length + padding.left + padding.right;
    width = (fixedWidth == null || fixedWidth == 0 || fixedWidth < minWidth) ? minWidth : fixedWidth;
    topPadding = padding.top;
    bottomPadding = padding.bottom;

    switch (textAlignment) {
      case AnsiTextAlignment.left:
        leftPadding = padding.left;
        rightPadding = width - padding.left - text.length;
        break;
      case AnsiTextAlignment.center:
        leftPadding = width ~/ 2 - text.length ~/ 2 + padding.left;
        rightPadding = width - leftPadding - text.length + padding.right;
        break;
      case AnsiTextAlignment.right:
        leftPadding = width - padding.right - text.length;
        rightPadding = padding.right;
        break;
    }
  }

  factory AnsiText.fromTheme(final String text, final AnsiTextTheme theme) {
    return AnsiText(
      text,
      foregroundColor: theme.foregroundColor!,
      backgroundColor: theme.backgroundColor!,
      textStyle: theme.textStyle!,
      textAlignment: theme.textAlignment!,
      padding: theme.padding!,
      fixedWidth: theme.fixedWidth,
    );
  }

  final String text;
  final AnsiColor foregroundColor;
  final AnsiColor backgroundColor;
  final AnsiTextStyle textStyle;
  final AnsiPadding padding;
  final AnsiTextAlignment textAlignment;

  late final int width;
  late final int topPadding;
  late final int bottomPadding;
  late final int leftPadding;
  late final int rightPadding;

  @override
  String toString() {
    return (StringBuffer()
          ..writeLines(topPadding)
          ..writeSpaces(leftPadding, backgroundColor)
          ..writeStyled(
            text,
            styles: textStyle.styles,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
          )
          ..writeSpaces(rightPadding, backgroundColor)
          ..writeLines(bottomPadding))
        .toString();
  }
}
