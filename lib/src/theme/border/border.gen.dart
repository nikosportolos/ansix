// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'border.dart';

class _$AnsiBorderImpl extends AnsiBorder {
  const _$AnsiBorderImpl({
    this.type = AnsiBorderType.all,
    this.style = AnsiBorderStyle.square,
    this.color = AnsiColor.none,
  }) : super.ctor();

  @override
  final AnsiBorderType type;

  @override
  final AnsiBorderStyle style;

  @override
  final AnsiColor color;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiBorder &&
            runtimeType == other.runtimeType &&
            type == other.type &&
            style == other.style &&
            color == other.color;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      type,
      style,
      color,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiBorder{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiBorder@<$hexIdentity>{type: $type, style: $style, color: $color}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiBorder;
}

abstract interface class _AnsiBorderCopyWithProxy {
  AnsiBorder type(AnsiBorderType newValue);

  AnsiBorder style(AnsiBorderStyle newValue);

  AnsiBorder color(AnsiColor newValue);

  AnsiBorder call({
    final AnsiBorderType? type,
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  });
}

class _AnsiBorderCopyWithProxyImpl implements _AnsiBorderCopyWithProxy {
  _AnsiBorderCopyWithProxyImpl(this._value);

  final AnsiBorder _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiBorder type(AnsiBorderType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorder style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorder color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiBorder call({
    final AnsiBorderType? type,
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  }) {
    return _$AnsiBorderImpl(
      type: type ?? _value.type,
      style: style ?? _value.style,
      color: color ?? _value.color,
    );
  }
}

sealed class $AnsiBorderCopyWithProxyChain<$Result> {
  factory $AnsiBorderCopyWithProxyChain(final AnsiBorder value,
          final $Result Function(AnsiBorder update) chain) =
      _AnsiBorderCopyWithProxyChainImpl<$Result>;

  $Result type(AnsiBorderType newValue);

  $Result style(AnsiBorderStyle newValue);

  $Result color(AnsiColor newValue);

  $Result call({
    final AnsiBorderType? type,
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  });
}

class _AnsiBorderCopyWithProxyChainImpl<$Result>
    implements $AnsiBorderCopyWithProxyChain<$Result> {
  _AnsiBorderCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiBorder _value;
  final $Result Function(AnsiBorder update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result type(AnsiBorderType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiBorderType? type,
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  }) {
    return _chain(_$AnsiBorderImpl(
      type: type ?? _value.type,
      style: style ?? _value.style,
      color: color ?? _value.color,
    ));
  }
}

extension $AnsiBorderExtension on AnsiBorder {
  _AnsiBorderCopyWithProxy get copyWith => _AnsiBorderCopyWithProxyImpl(this);
}
