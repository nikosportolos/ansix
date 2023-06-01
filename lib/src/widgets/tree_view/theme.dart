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
    AnsiTreeNodeTheme keyTheme,
    AnsiTreeNodeTheme valueTheme,
    AnsiTreeClassTheme classTheme,
  }) = _$AnsiTreeViewThemeImpl;

  @DefaultValue(true)
  bool get compact;

  @DefaultValue(false)
  bool get sorted;

  @DefaultValue(false)
  bool get showListItemIndex;

  @DefaultValue(AnsiTreeAnchorTheme())
  AnsiTreeAnchorTheme get anchorTheme;

  @DefaultValue(AnsiTreeNodeTheme(
    textStyle: AnsiTextStyle(bold: true),
  ))
  AnsiTreeNodeTheme get keyTheme;

  @DefaultValue(AnsiTreeNodeTheme())
  AnsiTreeNodeTheme get valueTheme;

  @DefaultValue(AnsiTreeClassTheme())
  AnsiTreeClassTheme get classTheme;

  /// Default theme for [AnsiTreeView].
  factory AnsiTreeViewTheme.$default() {
    return AnsiTreeViewTheme(
      compact: true,
      sorted: false,
      anchorTheme: const AnsiTreeAnchorTheme(
        color: AnsiColor.deepSkyBlue5,
        style: AnsiBorderStyle.square,
      ),
      keyTheme: const AnsiTreeNodeTheme(
        color: AnsiColor.white,
        textStyle: AnsiTextStyle(bold: true),
      ),
      valueTheme: const AnsiTreeNodeTheme(
        color: AnsiColor.grey69,
        textStyle: AnsiTextStyle(italic: true),
      ),
      classTheme: AnsiTreeClassTheme(
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
      showListItemIndex: true,
    );
  }
}

/// **AnsiTreeAnchorTheme**
class AnsiTreeAnchorTheme {
  /// Shorthand constructor
  const AnsiTreeAnchorTheme({
    this.style = AnsiBorderStyle.square,
    this.color = AnsiColor.none,
  });

  final AnsiBorderStyle style;
  final AnsiColor color;
}

/// **AnsiTreeClassTheme**
class AnsiTreeClassTheme {
  /// Shorthand constructor
  const AnsiTreeClassTheme({
    this.border = const AnsiBorder(),
    this.textTheme = const AnsiTextTheme(),
    this.showHash = true,
  });

  final AnsiBorder border;
  final AnsiTextTheme textTheme;
  final bool showHash;

  bool get hasBorder => border.style != AnsiBorderStyle.none;
}

/// **AnsiTreeNodeTheme**
class AnsiTreeNodeTheme {
  /// Shorthand constructor
  const AnsiTreeNodeTheme({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
  });

  final AnsiTextStyle textStyle;
  final AnsiColor color;
}
