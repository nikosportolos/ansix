import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/drawing/box_drawing.dart';

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

/// Style of the border
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

enum AnsiBorderType {
  all,
  header,
  inside,
  insideHorizontal,
  insideVertical,
  none,
  outside,
}
