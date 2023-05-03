import 'package:ansix/src/theme/alignment.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/padding.dart';
import 'package:ansix/src/theme/text_style.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'text_theme.gen.dart';

@DataClass()
abstract class AnsiTextTheme {
  const AnsiTextTheme.ctor();

  /// Default constructor
  const factory AnsiTextTheme({
    AnsiColor? foregroundColor,
    AnsiColor? backgroundColor,
    AnsiTextStyle? textStyle,
    AnsiPadding? padding,
    AnsiTextAlignment? textAlignment,
    int? fixedWidth,
  }) = _$AnsiTextThemeImpl;

  @DefaultValue(AnsiColor.none)
  AnsiColor? get foregroundColor;

  @DefaultValue(AnsiColor.none)
  AnsiColor? get backgroundColor;

  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle? get textStyle;

  @DefaultValue(AnsiPadding.none)
  AnsiPadding? get padding;

  @DefaultValue(AnsiTextAlignment.left)
  AnsiTextAlignment? get textAlignment;

  int? get fixedWidth;
}
