import 'package:ansix/ansix.dart';

/// **BoxDrawingSet**
///
/// The box drawing set is a collection of characters that can be used to
/// create various box and border designs in text-based interfaces.
/// These characters are typically displayed using the ASCII code page,
/// and are available in many terminal emulators and command-line interfaces.
///
/// The box drawing set includes a variety of characters that can be used to create different box shapes,
/// such as vertical and horizontal lines, corners, and intersections.
///
/// For example, the character '─' is used to draw horizontal lines,
/// while '│' is used for vertical lines, and '+' is used to represent intersections.
enum BoxDrawingSet {
  ascii(
    horizontalLine: '-',
    verticalLine: '|',
    topLeftCorner: '-',
    topRightCorner: '-',
    bottomLeftCorner: '-',
    bottomRightCorner: '-',
    intersection: '+',
    middleBottomEdge: '-',
    middleTopEdge: '-',
    middleRightEdge: '|',
    middleLeftEdge: '|',
  ),
  bold(
    horizontalLine: '━',
    verticalLine: '┃',
    topLeftCorner: '┏',
    topRightCorner: '┓',
    bottomLeftCorner: '┗',
    bottomRightCorner: '┛',
    intersection: '╋',
    middleBottomEdge: '┻',
    middleTopEdge: '┳',
    middleRightEdge: '┫',
    middleLeftEdge: '┣',
  ),
  double(
    horizontalLine: '═',
    verticalLine: '║',
    topLeftCorner: '╔',
    topRightCorner: '╗',
    bottomLeftCorner: '╚',
    bottomRightCorner: '╝',
    intersection: '╬',
    middleBottomEdge: '╩',
    middleTopEdge: '╦',
    middleRightEdge: '╣',
    middleLeftEdge: '╠',
  ),
  none(
    horizontalLine: '',
    verticalLine: '',
    topLeftCorner: '',
    topRightCorner: '',
    bottomLeftCorner: '',
    bottomRightCorner: '',
    intersection: '',
    middleBottomEdge: '',
    middleTopEdge: '',
    middleRightEdge: '',
    middleLeftEdge: '',
  ),
  rounded(
    horizontalLine: '─',
    verticalLine: '│',
    topLeftCorner: '╭',
    topRightCorner: '╮',
    bottomLeftCorner: '╰',
    bottomRightCorner: '╯',
    intersection: '┼',
    middleBottomEdge: '┴',
    middleTopEdge: '┬',
    middleRightEdge: '┤',
    middleLeftEdge: '├',
  ),
  square(
    horizontalLine: '─',
    verticalLine: '│',
    topLeftCorner: '┌',
    topRightCorner: '┐',
    bottomLeftCorner: '└',
    bottomRightCorner: '┘',
    intersection: '┼',
    middleBottomEdge: '┴',
    middleTopEdge: '┬',
    middleRightEdge: '┤',
    middleLeftEdge: '├',
  );

  const BoxDrawingSet({
    this.horizontalLine = '',
    this.verticalLine = '',
    this.topLeftCorner = '',
    this.topRightCorner = '',
    this.bottomLeftCorner = '',
    this.bottomRightCorner = '',
    this.intersection = '',
    this.middleBottomEdge = '',
    this.middleTopEdge = '',
    this.middleRightEdge = '',
    this.middleLeftEdge = '',
  });

  final String horizontalLine;
  final String verticalLine;
  final String topLeftCorner;
  final String topRightCorner;
  final String bottomLeftCorner;
  final String bottomRightCorner;
  final String intersection;
  final String middleBottomEdge;
  final String middleTopEdge;
  final String middleRightEdge;
  final String middleLeftEdge;

  /// Returns a [BoxDrawingSet] based on the given [AnsiBorderStyle].
  factory BoxDrawingSet.fromBorderStyle(final AnsiBorderStyle style) {
    switch (style) {
      case AnsiBorderStyle.ascii:
        return BoxDrawingSet.ascii;
      case AnsiBorderStyle.bold:
        return BoxDrawingSet.bold;
      case AnsiBorderStyle.double:
        return BoxDrawingSet.double;
      case AnsiBorderStyle.none:
        return BoxDrawingSet.none;
      case AnsiBorderStyle.rounded:
        return BoxDrawingSet.rounded;
      case AnsiBorderStyle.square:
        return BoxDrawingSet.square;
    }
  }

  @override
  String toString() {
    return '$horizontalLine'
        '$verticalLine'
        '$topLeftCorner'
        '$topRightCorner'
        '$bottomLeftCorner'
        '$bottomRightCorner'
        '$intersection'
        '$middleBottomEdge'
        '$middleTopEdge'
        '$middleRightEdge'
        '$middleLeftEdge';
  }
}
