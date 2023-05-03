import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/drawing/box_drawing.dart';

part 'enums.dart';

class AnsiBorder {
  AnsiBorder({
    this.type = AnsiBorderType.none,
    this.style = AnsiBorderStyle.none,
    this.color = AnsiColor.none,
  }) : boxDrawingSet = BoxDrawingSet.fromBorderStyle(style);

  final AnsiBorderType type;

  /// [BoxDrawingSet] of the border
  final BoxDrawingSet boxDrawingSet;

  /// Style of the border
  final AnsiBorderStyle style;

  /// Color of the border
  final AnsiColor color;
}
