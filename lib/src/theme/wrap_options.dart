import 'package:data_class_plugin/data_class_plugin.dart';

part 'wrap_options.gen.dart';

/// **WrapOptions**
///
/// A collection of properties that specify how a text should be wrapped.
///
/// - [lineLength]
///
///   If this field has a value, it will be used to calculate the wrapping limits.
///
///   Defaults to *null*.
///
/// - [splitWords]
///
///   If set to true words will be split when a line needs to be wrapped.
///
///   Defaults to *false*.
///
/// - [lineBreak]
///
///   If set to true, a '-' will be added when words are split.
///
///   Defaults to *false*.
@DataClass()
abstract class WrapOptions {
  const WrapOptions.ctor();

  /// Default constructor
  const factory WrapOptions({
    int? lineLength,
    bool splitWords,
    bool lineBreak,
  }) = _$WrapOptionsImpl;

  /// If this field has a value, it will be used to calculate the wrapping limits.
  ///
  /// Defaults to *null*.
  int? get lineLength;

  /// If set to true words will be split when a line needs to be wrapped.
  ///
  /// Defaults to *false*.
  @DefaultValue(false)
  bool get splitWords;

  /// If set to true, a '-' will be added when words are split.
  ///
  /// Defaults to *false*.
  @DefaultValue(false)
  bool get lineBreak;
}
