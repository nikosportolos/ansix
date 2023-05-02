import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/border/box_drawing.dart';

part 'enums.dart';

class AnsiBorder {
  AnsiBorder({
    this.type = AnsiBorderType.none,
    this.style = AnsiBorderStyle.none,
    this.color = AnsiColor.none,
  }) : boxDrawingSet = BoxDrawingSet.fromBorderStyle(style);

  final AnsiBorderType type;
  final BoxDrawingSet boxDrawingSet;
  final AnsiBorderStyle style;
  final AnsiColor color;
}
