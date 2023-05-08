import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/drawing/box_drawing.dart';

/// **AnsiBorder**
class AnsiBorder {
  const AnsiBorder({
    this.type = AnsiBorderType.none,
    this.style = AnsiBorderStyle.none,
    this.color = AnsiColor.none,
  });

  final AnsiBorderType type;

  /// Style of the border
  final AnsiBorderStyle style;

  /// Color of the border
  final AnsiColor color;
}

/// **AnsiBorderStyle**
///
/// ANSI border styles are a set of characters and escape codes
/// that can be used to draw borders and frames around text
/// or other content in terminal-based applications.
enum AnsiBorderStyle {
  ascii(BoxDrawingSet.ascii),
  bold(BoxDrawingSet.bold),
  double(BoxDrawingSet.double),
  markdown(BoxDrawingSet.markdown),
  none(BoxDrawingSet.none),
  rounded(BoxDrawingSet.rounded),
  square(BoxDrawingSet.square);

  const AnsiBorderStyle(
    this.boxDrawingSet,
  );

  final BoxDrawingSet boxDrawingSet;
}

/// **AnsiBorderType**
enum AnsiBorderType {
  all,
  header,
  inside,
  insideHorizontal,
  insideVertical,
  none,
  outside,
}
