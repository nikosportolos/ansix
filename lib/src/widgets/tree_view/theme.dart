import 'package:ansix/ansix.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'theme.gen.dart';

/// **AnsiTreeViewTheme**
///
/// Contains styles and colors for [AnsiTreeView].
@DataClass()
abstract class AnsiTreeViewTheme {
  const AnsiTreeViewTheme.ctor();

  /// Default constructor
  const factory AnsiTreeViewTheme({
    bool compact,
    bool sorted,
    bool showListItemIndex,
    AnsiTreeAnchorTheme anchorTheme,
    AnsiTreeNodeKeyTheme keyTheme,
    AnsiTreeNodeValueTheme valueTheme,
    AnsiTreeHeaderTheme headerTheme,
  }) = _$AnsiTreeViewThemeImpl;

  @DefaultValue(true)
  bool get compact;

  @DefaultValue(false)
  bool get sorted;

  @DefaultValue(false)
  bool get showListItemIndex;

  @DefaultValue(AnsiTreeAnchorTheme())
  AnsiTreeAnchorTheme get anchorTheme;

  @DefaultValue(AnsiTreeNodeKeyTheme(
    textStyle: AnsiTextStyle(bold: true),
  ))
  AnsiTreeNodeKeyTheme get keyTheme;

  @DefaultValue(AnsiTreeNodeValueTheme())
  AnsiTreeNodeValueTheme get valueTheme;

  @DefaultValue(AnsiTreeHeaderTheme())
  AnsiTreeHeaderTheme get headerTheme;

  /// Default theme for [AnsiTreeView].
  factory AnsiTreeViewTheme.$default() {
    return AnsiTreeViewTheme(
      compact: true,
      sorted: false,
      showListItemIndex: true,
      anchorTheme: const AnsiTreeAnchorTheme(
        color: AnsiColor.deepSkyBlue5,
        style: AnsiBorderStyle.square,
      ),
      keyTheme: const AnsiTreeNodeKeyTheme(
        color: AnsiColor.white,
        textStyle: AnsiTextStyle(bold: true),
      ),
      valueTheme: const AnsiTreeNodeValueTheme(
        color: AnsiColor.grey69,
        textStyle: AnsiTextStyle(italic: true),
        wrapText: true,
        wrapLength: 120,
      ),
      headerTheme: AnsiTreeHeaderTheme(
        textTheme: AnsiTextTheme(
          style: const AnsiTextStyle(bold: true),
          padding: AnsiPadding.horizontal(2),
          foregroundColor: AnsiColor.white,
        ),
        border: const AnsiBorder(
          style: AnsiBorderStyle.square,
          type: AnsiBorderType.header,
          color: AnsiColor.deepSkyBlue5,
        ),
      ),
    );
  }
}

/// **AnsiTreeAnchorTheme**
///
/// The theme that is used for styling the lines and anchors of the [AnsiTreeView].
@DataClass()
abstract class AnsiTreeAnchorTheme {
  const AnsiTreeAnchorTheme.ctor();

  /// Default constructor
  const factory AnsiTreeAnchorTheme({
    AnsiBorderStyle style,
    AnsiColor color,
  }) = _$AnsiTreeAnchorThemeImpl;

  @DefaultValue(AnsiBorderStyle.square)
  AnsiBorderStyle get style;

  @DefaultValue(AnsiColor.none)
  AnsiColor get color;
}

/// **AnsiTreeHeaderTheme**
///
/// The theme that is used for displaying the runtime type of the input object.
@DataClass()
abstract class AnsiTreeHeaderTheme {
  const AnsiTreeHeaderTheme.ctor();

  /// Default constructor
  const factory AnsiTreeHeaderTheme({
    AnsiBorder border,
    AnsiTextTheme textTheme,
    bool showHash,
  }) = _$AnsiTreeHeaderThemeImpl;

  @DefaultValue(AnsiBorder())
  AnsiBorder get border;

  @DefaultValue(AnsiTextTheme())
  AnsiTextTheme get textTheme;

  @DefaultValue(true)
  bool get showHash;

  bool get hasBorder => border.style != AnsiBorderStyle.none;
}

/// **AnsiTreeNodeTheme**
///
/// The theme interface that is used for each tree node in an [AnsiTreeView] widget.
@DataClass()
abstract class AnsiTreeNodeTheme {
  const AnsiTreeNodeTheme.ctor();

  /// Default constructor
  const factory AnsiTreeNodeTheme({
    AnsiTextStyle textStyle,
    AnsiColor color,
  }) = _$AnsiTreeNodeThemeImpl;

  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  @DefaultValue(AnsiColor.none)
  AnsiColor get color;
}

/// **AnsiTreeNodeKeyTheme**
///
/// The theme that is used for each tree node key in an [AnsiTreeView] widget.
@DataClass()
abstract class AnsiTreeNodeKeyTheme extends AnsiTreeNodeTheme {
  const AnsiTreeNodeKeyTheme.ctor() : super.ctor();

  /// Default constructor
  const factory AnsiTreeNodeKeyTheme({
    AnsiTextStyle textStyle,
    AnsiColor color,
  }) = _$AnsiTreeNodeKeyThemeImpl;

  @override
  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  @override
  @DefaultValue(AnsiColor.none)
  AnsiColor get color;
}

/// **AnsiTreeNodeValueTheme**
///
/// The theme that is used for each tree node value in an [AnsiTreeView] widget.
@DataClass()
abstract class AnsiTreeNodeValueTheme extends AnsiTreeNodeTheme {
  const AnsiTreeNodeValueTheme.ctor() : super.ctor();

  /// Default constructor
  const factory AnsiTreeNodeValueTheme({
    AnsiTextStyle textStyle,
    AnsiColor color,
    bool wrapText,
    int? wrapLength,
  }) = _$AnsiTreeNodeValueThemeImpl;

  @override
  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  @override
  @DefaultValue(AnsiColor.none)
  AnsiColor get color;

  @DefaultValue(false)
  bool get wrapText;

  int? get wrapLength;
}
