import 'package:data_class_plugin/data_class_plugin.dart';

part 'wrap_options.gen.dart';

/// **WrapOptions**
///
/// Define how a text should be wrapped.
///
/// - [splitWords] If set to true words will be split
///   when a line needs to be wrapped.
///
/// - [lineBreak] If set to true, a '-' will be added
///   when words are split.
@DataClass()
abstract class WrapOptions {
  const WrapOptions.ctor();

  /// Default constructor
  const factory WrapOptions({
    int? lineLength,
    bool splitWords,
    bool lineBreak,
  }) = _$WrapOptionsImpl;

  int? get lineLength;

  @DefaultValue(false)
  bool get splitWords;

  @DefaultValue(false)
  bool get lineBreak;
}
