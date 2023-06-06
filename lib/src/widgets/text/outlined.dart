import 'package:ansix/ansix.dart';

/// **AnsiOutlinedText**
///
/// ANSI outlined text refers to text that is bordered or outlined
/// using ANSI escape sequences in a command-line interface.
///
/// It can be customized with different colors and line styles to create visually appealing effects.
///
/// - [alignment] How the text should be aligned horizontally.
/// - [border] Used to draw an [AnsiBorder] around the text.
/// - [style] Defines a set of text styles for the text.
/// - [foregroundColor] Foreground color of the text.
/// - [backgroundColor] Background color of the text.
/// - [padding] Used to pad the text with lines and whitespaces.
/// - [fixedWidth] Used as a min constrain for the length of the text.
///   If [wrapText] is set to true, [fixedWidth] will be used as the maximum line length.
/// - [wrapText] If set to true the text will be wrapped if it exceeds the value of [fixedWidth].
/// - [wrapOptions] If [wrapText] is set to true, [wrapOptions] will be used to customize how a
///   text should be wrapped.
class AnsiOutlinedText extends AnsiText {
  AnsiOutlinedText(
    super.text, {
    required final AnsiBorder border,
    super.alignment = AnsiTextAlignment.left,
    super.style = const AnsiTextStyle(),
    super.foregroundColor = AnsiColor.none,
    super.backgroundColor = AnsiColor.none,
    super.padding = AnsiPadding.none,
    final int? fixedWidth,
    final bool wrapText = false,
    final WrapOptions wrapOptions = const WrapOptions(),
  }) {
    final AnsiText ansiText = AnsiText(
      wrapText
          ? text //
              .wrapText(fixedWidth: fixedWidth, wrapOptions: wrapOptions)
              .join(AnsiEscapeCodes.newLine)
          : text,
      alignment: alignment,
      style: style,
      foregroundColor: foregroundColor,
      backgroundColor: backgroundColor,
      padding: padding,
      fixedWidth: fixedWidth,
    );

    _formattedText = AnsiTable.fromList(
      <AnsiText>[ansiText],
      border: border,
    ).formattedText;
  }

  @override
  String get formattedText => _formattedText;
  late final String _formattedText;
}
