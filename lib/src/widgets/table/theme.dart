import 'package:ansix/src/theme/theme.dart';

class AnsiRowBorderSet {
  const AnsiRowBorderSet({
    this.start = '',
    this.line = '',
    this.separator = '',
    this.end = '',
  });

  final String start;
  final String line;
  final String separator;
  final String end;

  static const AnsiRowBorderSet empty = AnsiRowBorderSet();
  bool get isEmpty => this == empty;
}

class BorderBuilderTheme {
  const BorderBuilderTheme({
    required this.topBorder,
    this.headerLine,
    required this.textLine,
    this.footerLine,
    required this.middleBorder,
    required this.bottomBorder,
  });

  final AnsiRowBorderSet topBorder;
  final AnsiRowBorderSet? headerLine;
  final AnsiRowBorderSet textLine;
  final AnsiRowBorderSet? footerLine;
  final AnsiRowBorderSet middleBorder;
  final AnsiRowBorderSet bottomBorder;

  factory BorderBuilderTheme.fromBorder(
    final AnsiBorder border,
  ) {
    switch (border.type) {
      case AnsiBorderType.all:
        return BorderBuilderTheme.all(border.style);
      case AnsiBorderType.inside:
        return BorderBuilderTheme.inside(border.style);
      case AnsiBorderType.insideHorizontal:
        return BorderBuilderTheme.insideHorizontal(border.style);
      case AnsiBorderType.insideVertical:
        return BorderBuilderTheme.insideVertical(border.style);
      case AnsiBorderType.none:
        return BorderBuilderTheme.none();
      case AnsiBorderType.outside:
        return BorderBuilderTheme.outside(border.style);
      case AnsiBorderType.outsideHorizontal:
        return BorderBuilderTheme.outsideHorizontal(border.style);
      case AnsiBorderType.outsideVertical:
        return BorderBuilderTheme.outsideVertical(border.style);
      case AnsiBorderType.header:
      case AnsiBorderType.headerFooter:
      case AnsiBorderType.footer:
        return BorderBuilderTheme.header(border.style);
    }
  }

  /// **[BorderBuilderTheme.none]**
  ///
  /// Builds a table with no borders.
  ///
  /// Example:
  /// ```dart
  /// Name           Hex            RGB
  /// Red            #ff0000        (255, 0, 0)
  /// Green          #008000        (0, 128, 0)
  /// Blue           #0000ff        (0, 0, 255)
  /// ```
  factory BorderBuilderTheme.none() {
    return const BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: AnsiRowBorderSet(
        start: '',
        separator: ' ',
        line: '',
        end: '',
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }

  factory BorderBuilderTheme.header(
    final AnsiBorderStyle style,
  ) {
    return const BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: AnsiRowBorderSet(
        start: ' ',
        separator: ' ',
        line: '',
        end: ' ',
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }

  /// **[BorderBuilderTheme.all]**
  ///
  /// Builds a table with all borders.
  ///
  /// Example:
  /// ```dart
  /// ┌───────────────┬───────────────┬───────────────┐
  /// │Name           │Hex            │RGB            │
  /// ├───────────────┼───────────────┼───────────────┤
  /// │Red            │#ff0000        │(255, 0, 0)    │
  /// ├───────────────┼───────────────┼───────────────┤
  /// │Green          │#008000        │(0, 128, 0)    │
  /// ├───────────────┼───────────────┼───────────────┤
  /// │Blue           │#0000ff        │(0, 0, 255)    │
  /// └───────────────┴───────────────┴───────────────┘
  /// ```
  factory BorderBuilderTheme.all(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet(
        start: style.boxDrawingSet.topLeftCorner,
        separator: style.boxDrawingSet.middleTopEdge,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.topRightCorner,
      ),
      textLine: AnsiRowBorderSet(
        start: style.boxDrawingSet.verticalLine,
        separator: style.boxDrawingSet.verticalLine,
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiRowBorderSet(
        start: style.boxDrawingSet.middleLeftEdge,
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.intersection,
        end: style.boxDrawingSet.middleRightEdge,
      ),
      bottomBorder: AnsiRowBorderSet(
        start: style.boxDrawingSet.bottomLeftCorner,
        separator: style.boxDrawingSet.middleBottomEdge,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.bottomRightCorner,
      ),
    );
  }

  /// **[BorderBuilderTheme.inside]**
  ///
  /// Builds a table with inside vertical and horizontal borders.
  ///
  /// Example:
  /// ```dart
  /// Name           │Hex            │RGB
  /// ───────────────┼───────────────┼───────────────
  /// Red            │#ff0000        │(255, 0, 0)
  /// ───────────────┼───────────────┼───────────────
  /// Green          │#008000        │(0, 128, 0)
  /// ───────────────┼───────────────┼───────────────
  /// Blue           │#0000ff        │(0, 0, 255)
  /// ```
  factory BorderBuilderTheme.inside(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: AnsiRowBorderSet(
        separator: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiRowBorderSet(
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.intersection,
      ),
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }

  /// **[BorderBuilderTheme.insideHorizontal]**
  ///
  /// Builds a table with inside horizontal borders.
  ///
  /// Example:
  /// ```dart
  /// Name            Hex             RGB
  /// ───────────────────────────────────────────────
  /// Red             #ff0000         (255, 0, 0)
  /// ───────────────────────────────────────────────
  /// Green           #008000         (0, 128, 0)
  /// ───────────────────────────────────────────────
  /// Blue            #0000ff         (0, 0, 255)
  /// ```
  factory BorderBuilderTheme.insideHorizontal(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: const AnsiRowBorderSet(
        separator: ' ',
      ),
      middleBorder: AnsiRowBorderSet(
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.horizontalLine,
      ),
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }

  /// **[BorderBuilderTheme.insideVertical]**
  ///
  /// Builds a table with inside vertical borders.
  ///
  /// Example:
  /// ```dart
  /// Name           │Hex            │RGB
  /// Red            │#ff0000        │(255, 0, 0)
  /// Green          │#008000        │(0, 128, 0)
  /// Blue           │#0000ff        │(0, 0, 255)
  /// ```
  factory BorderBuilderTheme.insideVertical(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: AnsiRowBorderSet(
        separator: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }

  /// **[BorderBuilderTheme.outside]**
  ///
  /// Builds a table with outside borders only.
  ///
  /// Example:
  /// ```dart
  /// ┌─────────────────────────────────────────────┐
  /// │Name           Hex            RGB            │
  /// │Red            #ff0000        (255, 0, 0)    │
  /// │Green          #008000        (0, 128, 0)    │
  /// │Blue           #0000ff        (0, 0, 255)    │
  /// └─────────────────────────────────────────────┘
  /// ```
  factory BorderBuilderTheme.outside(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet(
        start: style.boxDrawingSet.topLeftCorner,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.topRightCorner,
      ),
      textLine: AnsiRowBorderSet(
        start: style.boxDrawingSet.verticalLine,
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet(
        start: style.boxDrawingSet.bottomLeftCorner,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.bottomRightCorner,
      ),
    );
  }

  /// **[BorderBuilderTheme.outsideHorizontal]**
  ///
  /// Builds a table with outside top and bottom borders only.
  ///
  /// Example:
  /// ```dart
  /// ───────────────────────────────────────────────
  ///  Name           Hex            RGB
  ///  Red            #ff0000        (255, 0, 0)
  ///  Green          #008000        (0, 128, 0)
  ///  Blue           #0000ff        (0, 0, 255)
  /// ───────────────────────────────────────────────
  /// ```
  factory BorderBuilderTheme.outsideHorizontal(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet(
        line: style.boxDrawingSet.horizontalLine,
      ),
      textLine: const AnsiRowBorderSet(
        separator: ' ',
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet(
        line: style.boxDrawingSet.horizontalLine,
      ),
    );
  }

  /// **[BorderBuilderTheme.outsideVertical]**
  ///
  /// Builds a table with outside left and right borders only.
  ///
  /// Example:
  /// ```dart
  /// │Name           Hex            RGB            │
  /// │Red            #ff0000        (255, 0, 0)    │
  /// │Green          #008000        (0, 128, 0)    │
  /// │Blue           #0000ff        (0, 0, 255)    │
  /// ```
  factory BorderBuilderTheme.outsideVertical(
    final AnsiBorderStyle style,
  ) {
    return BorderBuilderTheme(
      topBorder: AnsiRowBorderSet.empty,
      textLine: AnsiRowBorderSet(
        start: style.boxDrawingSet.verticalLine,
        separator: ' ',
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiRowBorderSet.empty,
      bottomBorder: AnsiRowBorderSet.empty,
    );
  }
}
