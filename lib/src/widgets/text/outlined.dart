import 'package:ansix/ansix.dart';

/// **AnsiOutlinedText**
///
/// ANSI outlined text refers to text that is bordered or outlined
/// using ANSI escape sequences in a command-line interface.
///
/// It can be customized with different colors and line styles to create visually appealing effects.
///
/// - [alignment]
///
///   How the text should be aligned horizontally.
///
/// - [border]
///
///   Used to draw an [AnsiBorder] around the text.
///
/// - [style]
///
///   Defines a set of text styles for the text.
///
/// - [foregroundColor]
///
///   Foreground color of the text.
///
/// - [backgroundColor]
///
///   Background color of the text.
///
/// - [padding]
///
///   Used to pad the text with lines and whitespaces.
///
/// - [fixedWidth]
///
///   Used as a min constrain for the length of the text.
///   If [wrapText] is set to true, [fixedWidth] will be used as the maximum line length.
///
/// - [wrapText]
///
///   If set to true the text will be wrapped if it exceeds the value of [fixedWidth].
///
/// - [wrapOptions]
///
///   If [wrapText] is set to true, [wrapOptions] will be used to customize how a
///   text should be wrapped.
///
/// - [transparent]
///
///   If set to true any external formatting will affect the [AnsiOutlinedText].
///
/// *Support multiline content*
class AnsiOutlinedText extends AnsiWidget {
  AnsiOutlinedText(
    final String text, {
    required final AnsiBorder border,
    final AnsiTextAlignment alignment = AnsiTextAlignment.left,
    final AnsiTextStyle style = const AnsiTextStyle(),
    final AnsiColor foregroundColor = AnsiColor.none,
    final AnsiColor backgroundColor = AnsiColor.none,
    final AnsiPadding padding = AnsiPadding.none,
    final int? fixedWidth,
    final bool wrapText = false,
    final WrapOptions wrapOptions = const WrapOptions(),
    final bool transparent = true,
  }) {
    _formattedText = AnsiGrid.single(
      wrapText
          ? text.wrapText(
              fixedWidth: fixedWidth,
              wrapOptions: wrapOptions,
            )
          : <Object?>[text],
      theme: AnsiGridTheme(
        border: border,
        transparent: transparent,
        orientation: AnsiOrientation.vertical,
        cellTextTheme: AnsiTextTheme(
          alignment: alignment,
          style: style,
          foregroundColor: foregroundColor,
          backgroundColor: backgroundColor,
          padding: padding,
          fixedWidth: fixedWidth,
        ),
      ),
    ).formattedText;
  }

  @override
  String get formattedText => _formattedText;

  late final String _formattedText;
}
