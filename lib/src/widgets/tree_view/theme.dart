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
    this.anchorTheme = const AnsiTreeAnchorTheme(),
    this.keyTheme = const AnsiTreeNodeTheme(
      textStyle: AnsiTextStyle(bold: true),
    ),
    this.valueTheme = const AnsiTreeNodeTheme(),
    this.classTheme = const AnsiTreeClassTheme(),
  });

  final bool compact;
  final bool sorted;
  final bool showListItemIndex;
  final AnsiTreeAnchorTheme anchorTheme;
  final AnsiTreeNodeTheme keyTheme;
  final AnsiTreeNodeTheme valueTheme;
  final AnsiTreeClassTheme classTheme;

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
