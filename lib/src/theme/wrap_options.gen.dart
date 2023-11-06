// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
// coverage:ignore-file

part of 'wrap_options.dart';

class _$WrapOptionsImpl extends WrapOptions {
  const _$WrapOptionsImpl({
    this.lineLength,
    this.splitWords = false,
    this.lineBreak = false,
  }) : super.ctor();

  @override
  final int? lineLength;

  @override
  final bool splitWords;

  @override
  final bool lineBreak;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is WrapOptions &&
            runtimeType == other.runtimeType &&
            lineLength == other.lineLength &&
            splitWords == other.splitWords &&
            lineBreak == other.lineBreak;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      lineLength,
      splitWords,
      lineBreak,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'WrapOptions{<optimized out>}';
    assert(() {
      toStringOutput =
          'WrapOptions@<$hexIdentity>{lineLength: $lineLength, splitWords: $splitWords, lineBreak: $lineBreak}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => WrapOptions;
}

abstract interface class _WrapOptionsCopyWithProxy {
  WrapOptions lineLength(int? newValue);

  WrapOptions splitWords(bool newValue);

  WrapOptions lineBreak(bool newValue);

  WrapOptions call({
    final int? lineLength,
    final bool? splitWords,
    final bool? lineBreak,
  });
}

class _WrapOptionsCopyWithProxyImpl implements _WrapOptionsCopyWithProxy {
  _WrapOptionsCopyWithProxyImpl(this._value);

  final WrapOptions _value;

  @pragma('vm:prefer-inline')
  @override
  WrapOptions lineLength(int? newValue) => this(lineLength: newValue);

  @pragma('vm:prefer-inline')
  @override
  WrapOptions splitWords(bool newValue) => this(splitWords: newValue);

  @pragma('vm:prefer-inline')
  @override
  WrapOptions lineBreak(bool newValue) => this(lineBreak: newValue);

  @pragma('vm:prefer-inline')
  @override
  WrapOptions call({
    final Object? lineLength = const Object(),
    final bool? splitWords,
    final bool? lineBreak,
  }) {
    return _$WrapOptionsImpl(
      lineLength: identical(lineLength, const Object())
          ? _value.lineLength
          : (lineLength as int?),
      splitWords: splitWords ?? _value.splitWords,
      lineBreak: lineBreak ?? _value.lineBreak,
    );
  }
}

sealed class $WrapOptionsCopyWithProxyChain<$Result> {
  factory $WrapOptionsCopyWithProxyChain(final WrapOptions value,
          final $Result Function(WrapOptions update) chain) =
      _WrapOptionsCopyWithProxyChainImpl<$Result>;

  $Result lineLength(int? newValue);

  $Result splitWords(bool newValue);

  $Result lineBreak(bool newValue);

  $Result call({
    final int? lineLength,
    final bool? splitWords,
    final bool? lineBreak,
  });
}

class _WrapOptionsCopyWithProxyChainImpl<$Result>
    implements $WrapOptionsCopyWithProxyChain<$Result> {
  _WrapOptionsCopyWithProxyChainImpl(this._value, this._chain);

  final WrapOptions _value;
  final $Result Function(WrapOptions update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result lineLength(int? newValue) => this(lineLength: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result splitWords(bool newValue) => this(splitWords: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result lineBreak(bool newValue) => this(lineBreak: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final Object? lineLength = const Object(),
    final bool? splitWords,
    final bool? lineBreak,
  }) {
    return _chain(_$WrapOptionsImpl(
      lineLength: identical(lineLength, const Object())
          ? _value.lineLength
          : (lineLength as int?),
      splitWords: splitWords ?? _value.splitWords,
      lineBreak: lineBreak ?? _value.lineBreak,
    ));
  }
}

extension $WrapOptionsExtension on WrapOptions {
  _WrapOptionsCopyWithProxy get copyWith => _WrapOptionsCopyWithProxyImpl(this);
}
