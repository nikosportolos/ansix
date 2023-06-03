import 'package:ansix/ansix.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'border.gen.dart';
part 'style.dart';
part 'type.dart';

/// **AnsiBorder**
///
/// If AnsiBorderType is set to [AnsiBorderType.none] and
/// AnsiBorderStyle is set to [AnsiBorderStyle.none] no borders will be drawn.
@DataClass()
abstract class AnsiBorder {
  const AnsiBorder.ctor();

  /// Default constructor
  const factory AnsiBorder({
    AnsiBorderType type,
    AnsiBorderStyle style,
    AnsiColor color,
  }) = _$AnsiBorderImpl;

  /// The selected [AnsiBorderType] of the border.
  ///
  /// Defaults to [AnsiBorderType.none].
  @DefaultValue(AnsiBorderType.none)
  AnsiBorderType get type;

  /// The selected [AnsiBorderStyle] of the border.
  ///
  /// Defaults to [AnsiBorderStyle.square].
  @DefaultValue(AnsiBorderStyle.square)
  AnsiBorderStyle get style;

  /// The selected [AnsiColor] of the border.
  ///
  /// Defaults to [AnsiColor.none].
  @DefaultValue(AnsiColor.none)
  AnsiColor get color;
}
