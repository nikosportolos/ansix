import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/drawing/box_drawing.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'border.gen.dart';
part 'style.dart';
part 'type.dart';

/// **AnsiBorder**
@DataClass()
abstract class AnsiBorder {
  const AnsiBorder.ctor();

  /// Default constructor
  const factory AnsiBorder({
    AnsiBorderType type,
    AnsiBorderStyle style,
    AnsiColor color,
  }) = _$AnsiBorderImpl;

  @DefaultValue(AnsiBorderType.all)
  AnsiBorderType get type;

  @DefaultValue(AnsiBorderStyle.none)
  AnsiBorderStyle get style;

  @DefaultValue(AnsiColor.none)
  AnsiColor get color;
}
