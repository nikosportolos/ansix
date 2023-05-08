import 'package:ansix/ansix.dart';

/// Box-drawing characters, also known as line-drawing characters, are a form of semigraphics
/// widely used in text user interfaces to draw various geometric frames and boxes.
///
/// Sources:
/// - https://en.wikipedia.org/wiki/Box-drawing_character
/// - https://en.wikipedia.org/wiki/Alt_code
/// - https://theasciicode.com.ar
class BoxDrawingSet {
  const BoxDrawingSet._({
    this.horizontalLine = '',
    this.verticalLine = '',
    this.topLeftCorner = '',
    this.topRightCorner = '',
    this.bottomLeftCorner = '',
    this.bottomRightCorner = '',
    this.cross = '',
    this.crossUp = '',
    this.crossDown = '',
    this.crossLeft = '',
    this.crossRight = '',
  });

  static const BoxDrawingSet ascii = BoxDrawingSet._(
    horizontalLine: '-',
    verticalLine: '|',
    topLeftCorner: '-',
    topRightCorner: '-',
    bottomLeftCorner: '-',
    bottomRightCorner: '-',
    cross: '+',
    crossUp: '-',
    crossDown: '-',
    crossLeft: '|',
    crossRight: '|',
  );

  static const BoxDrawingSet bold = BoxDrawingSet._(
    horizontalLine: '━',
    verticalLine: '┃',
    topLeftCorner: '┏',
    topRightCorner: '┓',
    bottomLeftCorner: '┗',
    bottomRightCorner: '┛',
    cross: '╋',
    crossUp: '┻',
    crossDown: '┳',
    crossLeft: '┫',
    crossRight: '┣',
  );

  static const BoxDrawingSet double = BoxDrawingSet._(
    horizontalLine: '═',
    verticalLine: '║',
    topLeftCorner: '╔',
    topRightCorner: '╗',
    bottomLeftCorner: '╚',
    bottomRightCorner: '╝',
    cross: '╬',
    crossUp: '╩',
    crossDown: '╦',
    crossLeft: '╣',
    crossRight: '╠',
  );

  static const BoxDrawingSet markdown = BoxDrawingSet._(
    horizontalLine: '-',
    verticalLine: '|',
    topLeftCorner: '|',
    topRightCorner: '|',
    bottomLeftCorner: '|',
    bottomRightCorner: '|',
    cross: '-',
    crossUp: '-',
    crossDown: '-',
    crossLeft: '|',
    crossRight: '|',
  );

  static const BoxDrawingSet none = BoxDrawingSet._(
    horizontalLine: '',
    verticalLine: '',
    topLeftCorner: '',
    topRightCorner: '',
    bottomLeftCorner: '',
    bottomRightCorner: '',
    cross: '',
    crossUp: '',
    crossDown: '',
    crossLeft: '',
    crossRight: '',
  );

  static const BoxDrawingSet rounded = BoxDrawingSet._(
    horizontalLine: '─',
    verticalLine: '│',
    topLeftCorner: '╭',
    topRightCorner: '╮',
    bottomLeftCorner: '╰',
    bottomRightCorner: '╯',
    cross: '┼',
    crossUp: '┴',
    crossDown: '┬',
    crossLeft: '┤',
    crossRight: '├',
  );

  static const BoxDrawingSet square = BoxDrawingSet._(
    horizontalLine: '─',
    verticalLine: '│',
    topLeftCorner: '┌',
    topRightCorner: '┐',
    bottomLeftCorner: '└',
    bottomRightCorner: '┘',
    cross: '┼',
    crossUp: '┴',
    crossDown: '┬',
    crossLeft: '┤',
    crossRight: '├',
  );

  factory BoxDrawingSet.fromBorderStyle(final AnsiBorderStyle style) {
    switch (style) {
      case AnsiBorderStyle.ascii:
        return BoxDrawingSet.ascii;
      case AnsiBorderStyle.bold:
        return BoxDrawingSet.bold;
      case AnsiBorderStyle.double:
        return BoxDrawingSet.double;
      case AnsiBorderStyle.markdown:
        return BoxDrawingSet.markdown;
      case AnsiBorderStyle.none:
        return BoxDrawingSet.none;
      case AnsiBorderStyle.rounded:
        return BoxDrawingSet.rounded;
      case AnsiBorderStyle.square:
        return BoxDrawingSet.square;
    }
  }

  final String horizontalLine;
  final String verticalLine;
  final String topLeftCorner;
  final String topRightCorner;
  final String bottomLeftCorner;
  final String bottomRightCorner;
  final String cross;
  final String crossUp;
  final String crossDown;
  final String crossLeft;
  final String crossRight;

  static const List<BoxDrawingSet> values = <BoxDrawingSet>[
    ascii,
    bold,
    double,
    markdown,
    none,
    rounded,
    square,
  ];
}
