import 'package:ansix/ansix.dart';

/// **AnsiGridBorderSet**
///
/// This class contains sets of properties required to
/// draw the borders of an [AnsiGrid].
///
/// - [topBorder]
///
///   The [AnsiBorderSet] used to draw the top border of an [AnsiGrid].
///
/// - [textLine]
///
///   The [AnsiBorderSet] used to draw borders between the columns of an [AnsiGrid].
///
/// - [middleBorder]
///
///   The [AnsiBorderSet] used to draw borders between the rows of an [AnsiGrid].
///
/// - [bottomBorder]
///
///   The [AnsiBorderSet] used to draw the bottom border of an [AnsiGrid].
class AnsiGridBorderSet {
  const AnsiGridBorderSet({
    required this.topBorder,
    required this.textLine,
    required this.middleBorder,
    required this.bottomBorder,
  });

  /// The [AnsiBorderSet] used to draw the top border of an [AnsiGrid].
  final AnsiBorderSet topBorder;

  /// The [AnsiBorderSet] used to draw borders between the columns of an [AnsiGrid].
  final AnsiBorderSet textLine;

  /// The [AnsiBorderSet] used to draw borders between the rows of an [AnsiGrid].
  final AnsiBorderSet middleBorder;

  /// The [AnsiBorderSet] used to draw the bottom border of an [AnsiGrid].
  final AnsiBorderSet bottomBorder;

  factory AnsiGridBorderSet.fromBorder(
    final AnsiBorder border,
  ) {
    switch (border.type) {
      case AnsiBorderType.all:
        return AnsiGridBorderSet.all(border.style);

      case AnsiBorderType.inside:
        return AnsiGridBorderSet.inside(border.style);

      case AnsiBorderType.insideHorizontal:
        return AnsiGridBorderSet.insideHorizontal(border.style);

      case AnsiBorderType.insideVertical:
        return AnsiGridBorderSet.insideVertical(border.style);

      case AnsiBorderType.none:
        return AnsiGridBorderSet.none();

      case AnsiBorderType.outside:
        return AnsiGridBorderSet.outside(border.style);

      case AnsiBorderType.outsideHorizontal:
        return AnsiGridBorderSet.outsideHorizontal(border.style);

      case AnsiBorderType.outsideVertical:
        return AnsiGridBorderSet.outsideVertical(border.style);
    }
  }

  /// **[AnsiGridBorderSet.none]**
  ///
  /// Builds an [AnsiGrid] with no borders.
  ///
  /// Example:
  /// ```dart
  /// Name           Hex            RGB
  /// Red            #ff0000        (255, 0, 0)
  /// Green          #008000        (0, 128, 0)
  /// Blue           #0000ff        (0, 0, 255)
  /// ```
  factory AnsiGridBorderSet.none() {
    return const AnsiGridBorderSet(
      topBorder: AnsiBorderSet.empty,
      textLine: AnsiBorderSet.empty,
      middleBorder: AnsiBorderSet.empty,
      bottomBorder: AnsiBorderSet.empty,
    );
  }

  /// **[AnsiGridBorderSet.all]**
  ///
  /// Builds an [AnsiGrid] with all borders.
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
  factory AnsiGridBorderSet.all(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet(
        start: style.boxDrawingSet.topLeftCorner,
        separator: style.boxDrawingSet.middleTopEdge,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.topRightCorner,
      ),
      textLine: AnsiBorderSet(
        start: style.boxDrawingSet.verticalLine,
        separator: style.boxDrawingSet.verticalLine,
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiBorderSet(
        start: style.boxDrawingSet.middleLeftEdge,
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.intersection,
        end: style.boxDrawingSet.middleRightEdge,
      ),
      bottomBorder: AnsiBorderSet(
        start: style.boxDrawingSet.bottomLeftCorner,
        separator: style.boxDrawingSet.middleBottomEdge,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.bottomRightCorner,
      ),
    );
  }

  /// **[AnsiGridBorderSet.inside]**
  ///
  /// Builds an [AnsiGrid] with inside vertical and horizontal borders.
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
  factory AnsiGridBorderSet.inside(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet.empty,
      textLine: AnsiBorderSet(
        separator: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiBorderSet(
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.intersection,
      ),
      bottomBorder: AnsiBorderSet.empty,
    );
  }

  /// **[AnsiGridBorderSet.insideHorizontal]**
  ///
  /// Builds an [AnsiGrid] with inside horizontal borders.
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
  factory AnsiGridBorderSet.insideHorizontal(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet.empty,
      textLine: const AnsiBorderSet(
        separator: ' ',
      ),
      middleBorder: AnsiBorderSet(
        line: style.boxDrawingSet.horizontalLine,
        separator: style.boxDrawingSet.horizontalLine,
      ),
      bottomBorder: AnsiBorderSet.empty,
    );
  }

  /// **[AnsiGridBorderSet.insideVertical]**
  ///
  /// Builds an [AnsiGrid] with inside vertical borders.
  ///
  /// Example:
  /// ```dart
  /// Name           │Hex            │RGB
  /// Red            │#ff0000        │(255, 0, 0)
  /// Green          │#008000        │(0, 128, 0)
  /// Blue           │#0000ff        │(0, 0, 255)
  /// ```
  factory AnsiGridBorderSet.insideVertical(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet.empty,
      textLine: AnsiBorderSet(
        separator: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiBorderSet.empty,
      bottomBorder: AnsiBorderSet.empty,
    );
  }

  /// **[AnsiGridBorderSet.outside]**
  ///
  /// Builds an [AnsiGrid] with outside borders only.
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
  factory AnsiGridBorderSet.outside(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet(
        start: style.boxDrawingSet.topLeftCorner,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.topRightCorner,
      ),
      textLine: AnsiBorderSet(
        start: style.boxDrawingSet.verticalLine,
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiBorderSet.empty,
      bottomBorder: AnsiBorderSet(
        start: style.boxDrawingSet.bottomLeftCorner,
        line: style.boxDrawingSet.horizontalLine,
        end: style.boxDrawingSet.bottomRightCorner,
      ),
    );
  }

  /// **[AnsiGridBorderSet.outsideHorizontal]**
  ///
  /// Builds an [AnsiGrid] with outside top and bottom borders only.
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
  factory AnsiGridBorderSet.outsideHorizontal(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet(
        line: style.boxDrawingSet.horizontalLine,
      ),
      textLine: AnsiBorderSet.empty,
      middleBorder: AnsiBorderSet.empty,
      bottomBorder: AnsiBorderSet(
        line: style.boxDrawingSet.horizontalLine,
      ),
    );
  }

  /// **[AnsiGridBorderSet.outsideVertical]**
  ///
  /// Builds an [AnsiGrid] with outside left and right borders only.
  ///
  /// Example:
  /// ```dart
  /// │Name           Hex            RGB            │
  /// │Red            #ff0000        (255, 0, 0)    │
  /// │Green          #008000        (0, 128, 0)    │
  /// │Blue           #0000ff        (0, 0, 255)    │
  /// ```
  factory AnsiGridBorderSet.outsideVertical(
    final AnsiBorderStyle style,
  ) {
    return AnsiGridBorderSet(
      topBorder: AnsiBorderSet.empty,
      textLine: AnsiBorderSet(
        start: style.boxDrawingSet.verticalLine,
        separator: ' ',
        end: style.boxDrawingSet.verticalLine,
      ),
      middleBorder: AnsiBorderSet.empty,
      bottomBorder: AnsiBorderSet.empty,
    );
  }
}
