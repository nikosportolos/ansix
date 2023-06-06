// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
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

class _$WrapOptionsCopyWithProxy {
  _$WrapOptionsCopyWithProxy(this._value);

  final WrapOptions _value;

  @pragma('vm:prefer-inline')
  WrapOptions lineLength(int? newValue) => this(lineLength: newValue);

  @pragma('vm:prefer-inline')
  WrapOptions splitWords(bool newValue) => this(splitWords: newValue);

  @pragma('vm:prefer-inline')
  WrapOptions lineBreak(bool newValue) => this(lineBreak: newValue);

  @pragma('vm:prefer-inline')
  WrapOptions call({
    final Object? lineLength = const Object(),
    final bool? splitWords,
    final bool? lineBreak,
  }) {
    return _$WrapOptionsImpl(
      lineLength: identical(lineLength, const Object()) ? _value.lineLength : (lineLength as int?),
      splitWords: splitWords ?? _value.splitWords,
      lineBreak: lineBreak ?? _value.lineBreak,
    );
  }
}

class $WrapOptionsCopyWithProxyChain<$Result> {
  $WrapOptionsCopyWithProxyChain(this._value, this._chain);

  final WrapOptions _value;
  final $Result Function(WrapOptions update) _chain;

  @pragma('vm:prefer-inline')
  $Result lineLength(int? newValue) => this(lineLength: newValue);

  @pragma('vm:prefer-inline')
  $Result splitWords(bool newValue) => this(splitWords: newValue);

  @pragma('vm:prefer-inline')
  $Result lineBreak(bool newValue) => this(lineBreak: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final Object? lineLength = const Object(),
    final bool? splitWords,
    final bool? lineBreak,
  }) {
    return _chain(_$WrapOptionsImpl(
      lineLength: identical(lineLength, const Object()) ? _value.lineLength : (lineLength as int?),
      splitWords: splitWords ?? _value.splitWords,
      lineBreak: lineBreak ?? _value.lineBreak,
    ));
  }
}

extension $WrapOptionsExtension on WrapOptions {
  _$WrapOptionsCopyWithProxy get copyWith => _$WrapOptionsCopyWithProxy(this);
}
