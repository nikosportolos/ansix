import 'package:ansix/ansix.dart';

/// **AnsiTreeViewTheme**
///
/// Contains styles and colors for [AnsiTreeView].
class AnsiTreeViewTheme {
  /// Shorthand constructor
  const AnsiTreeViewTheme({
    this.compact = true,
    this.sorted = false,
    this.showListItemIndex = false,
    this.anchorTheme = const TreeAnchorTheme(),
    this.keyTheme = const TreeNodeTheme(
      textStyle: AnsiTextStyle(bold: true),
    ),
    this.valueTheme = const TreeNodeTheme(),
    this.classTheme = const TreeClassTheme(),
  });

  final bool compact;
  final bool sorted;
  final bool showListItemIndex;
  final TreeAnchorTheme anchorTheme;
  final TreeNodeTheme keyTheme;
  final TreeNodeTheme valueTheme;
  final TreeClassTheme classTheme;

  /// Default theme for [AnsiTreeView].
  factory AnsiTreeViewTheme.$default() {
    return AnsiTreeViewTheme(
      compact: true,
      sorted: false,
      anchorTheme: const TreeAnchorTheme(
        color: AnsiColor.deepSkyBlue5,
        boxDrawingSet: BoxDrawingSet.square,
      ),
      keyTheme: const TreeNodeTheme(
        color: AnsiColor.white,
        textStyle: AnsiTextStyle(bold: true),
      ),
      valueTheme: const TreeNodeTheme(
        color: AnsiColor.grey69,
        textStyle: AnsiTextStyle(italic: true),
      ),
      classTheme: TreeClassTheme(
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

/// **TreeAnchorTheme**
class TreeAnchorTheme {
  /// Shorthand constructor
  const TreeAnchorTheme({
    this.boxDrawingSet = BoxDrawingSet.square,
    this.color = AnsiColor.none,
  });

  final BoxDrawingSet boxDrawingSet;
  final AnsiColor color;
}

/// **TreeClassTheme**
class TreeClassTheme {
  /// Shorthand constructor
  const TreeClassTheme({
    this.border = const AnsiBorder(),
    this.textTheme = const AnsiTextTheme(),
    this.showHash = true,
  });

  final AnsiBorder border;
  final AnsiTextTheme textTheme;
  final bool showHash;
}

/// **TreeNodeTheme**
class TreeNodeTheme {
  /// Shorthand constructor
  const TreeNodeTheme({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
  });

  final AnsiTextStyle textStyle;
  final AnsiColor color;
}
