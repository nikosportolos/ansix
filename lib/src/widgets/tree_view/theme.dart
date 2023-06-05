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

  /// If set to false extra lines will be added between each node and anchor lines will be longer.
  @DefaultValue(true)
  bool get compact;

  /// If set to true all tree nodes will be sorted based on their key.
  @DefaultValue(false)
  bool get sorted;

  /// If set to true all an index will be displayed before list item.
  @DefaultValue(false)
  bool get showListItemIndex;

  /// Defines the selected theme for the anchors.
  @DefaultValue(AnsiTreeAnchorTheme())
  AnsiTreeAnchorTheme get anchorTheme;

  /// Defines the selected theme for the tree node keys.
  @DefaultValue(AnsiTreeNodeKeyTheme(
    textStyle: AnsiTextStyle(bold: true),
  ))
  AnsiTreeNodeKeyTheme get keyTheme;

  /// Defines the selected theme for the tree node values.
  @DefaultValue(AnsiTreeNodeValueTheme())
  AnsiTreeNodeValueTheme get valueTheme;

  /// Defines the selected theme for the tree node header.
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
        textStyle: AnsiTextStyle(italic: true),
        alignment: AnsiTextAlignment.center,
        color: AnsiColor.grey69,
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

  /// Defines the [AnsiBorderStyle] of the tree node's key.
  @DefaultValue(AnsiBorderStyle.square)
  AnsiBorderStyle get style;

  /// Defines the foreground color of the tree node's key.
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

  /// Defines the [AnsiTextStyle] of the tree node.
  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  /// Defines the foreground color of the tree node.
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

  /// Defines the [AnsiTextStyle] of the tree node.
  @override
  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  /// Defines the foreground color of the tree node.
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
    AnsiTextAlignment alignment,
  }) = _$AnsiTreeNodeValueThemeImpl;

  /// Defines the [AnsiTextStyle] of the tree node.
  @override
  @DefaultValue(AnsiTextStyle())
  AnsiTextStyle get textStyle;

  /// Defines the foreground color of the tree node.
  @override
  @DefaultValue(AnsiColor.none)
  AnsiColor get color;

  /// If set to true all values that exceed the [wrapLength] will be wrapped.
  @DefaultValue(false)
  bool get wrapText;

  /// Defines the maximum length of a tree node (including anchors & values).
  int? get wrapLength;

  /// Defines the alignment relative to the tree node key.
  @DefaultValue(AnsiTextAlignment.left)
  AnsiTextAlignment get alignment;
}
