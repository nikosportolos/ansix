import 'package:ansix/src/theme/alignment.dart';
import 'package:ansix/src/theme/border/border.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/widgets/table/table.dart';
import 'package:ansix/src/widgets/text/text.dart';

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
  }) {
    final AnsiText ansiText = AnsiText(
      text,
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
