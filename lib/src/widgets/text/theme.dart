import 'package:ansix/src/theme/alignment.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/widgets/text/padding.dart';
import 'package:ansix/src/widgets/text/style.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'theme.gen.dart';

@DataClass()
abstract class AnsiTextTheme {
  const AnsiTextTheme.ctor();

  /// Default constructor
  const factory AnsiTextTheme({
    AnsiColor foregroundColor,
    AnsiColor backgroundColor,
    AnsiTextStyle style,
    AnsiPadding padding,
    AnsiTextAlignment alignment,
    int? fixedWidth,
  }) = _$AnsiTextThemeImpl;

  @DefaultValue(AnsiColor.none)
  AnsiColor get foregroundColor;

  @DefaultValue(AnsiColor.none)
  AnsiColor get backgroundColor;

  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get style;

  @DefaultValue(AnsiPadding.none)
  AnsiPadding get padding;

  @DefaultValue(AnsiTextAlignment.left)
  AnsiTextAlignment get alignment;

  int? get fixedWidth;
}
