import 'package:ansix/src/core/escape_codes.dart';
import 'package:ansix/src/core/extensions/extensions.dart';
import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/text/text.dart';
import 'package:ansix/src/widgets/widget.dart';

export '../../theme/padding.dart';
export 'style.dart';
export 'theme.dart';

/// **AnsiText**
///
/// - [alignment] How the text should be aligned horizontally.
/// - [style] Defines a set of text styles for the text.
/// - [foregroundColor] Foreground color of the text.
/// - [backgroundColor] Background color of the text.
/// - [padding] Used to pad the text with lines and whitespaces.
/// - [fixedWidth] Used as a min constrain for the length of the text.
class AnsiText extends AnsiWidget {
  static final RegExp ansiMatcher = RegExp(r'\[(.*?)m');

  AnsiText(
    final String text, {
    this.alignment = AnsiTextAlignment.left,
    this.style = const AnsiTextStyle(),
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.padding = AnsiPadding.none,
    this.fixedWidth,
  }) : text = text.unformatted {
    final int minWidth =
        this.text.lengthWithoutNewLines + padding.horizontalPadding;
    width = (fixedWidth == null || fixedWidth == 0 || fixedWidth! < minWidth)
        ? minWidth
        : fixedWidth!;

    final int topPadding = padding.top;
    final int bottomPadding = padding.bottom;
    late final int leftPadding;
    late final int rightPadding;

    switch (alignment) {
      case AnsiTextAlignment.left:
        leftPadding = padding.left;
        rightPadding = width - padding.left - this.text.length;
        break;

      case AnsiTextAlignment.center:
        final int paddedWidth = width + padding.horizontalPadding;
        leftPadding =
            (paddedWidth / 2 - this.text.length / 2 - padding.left).floor();
        rightPadding = width - this.text.length - leftPadding;
        break;

      case AnsiTextAlignment.right:
        leftPadding = width - padding.right - this.text.length;
        rightPadding = padding.right;
        break;
    }

    final StringBuffer buffer = StringBuffer();

    buffer.writeLines(topPadding);
    if (backgroundColor != AnsiColor.none) {
      buffer.write(backgroundColor.background);
    }

    buffer
      ..writeSpaces(leftPadding)
      ..writeAll(style.styles.map((AnsiStyle s) => s.startEscapeCode));

    if (foregroundColor != AnsiColor.none && text.isNotEmpty) {
      buffer.write(foregroundColor.foreground);
    }

    buffer
      ..write(text)
      ..writeAll(style.styles.reversed.map((AnsiStyle s) => s.endEscapeCode))
      ..writeSpaces(rightPadding);

    if ((backgroundColor != AnsiColor.none ||
            foregroundColor != AnsiColor.none) &&
        text.isNotEmpty) {
      buffer.write(AnsiEscapeCodes.reset);
    }

    buffer.writeLines(bottomPadding);

    formattedText = buffer.toString();
  }

  final String text;
  final AnsiColor foregroundColor;
  final AnsiColor backgroundColor;
  final AnsiTextStyle style;
  final AnsiPadding padding;
  final AnsiTextAlignment alignment;

  late final int width;
  final int? fixedWidth;

  @override
  late final String formattedText;

  bool get isMultiline => formattedText.contains('\n');

  AnsiTextTheme get theme => AnsiTextTheme(
        alignment: alignment,
        style: style,
        padding: padding,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        fixedWidth: fixedWidth,
      );

  factory AnsiText.withTheme(final String text, final AnsiTextTheme theme) {
    return AnsiText(
      text,
      foregroundColor: theme.foregroundColor,
      backgroundColor: theme.backgroundColor,
      style: theme.style,
      alignment: theme.alignment,
      padding: theme.padding,
      fixedWidth: theme.fixedWidth,
    );
  }
}
