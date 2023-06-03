// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'border.dart';

class _$AnsiBorderImpl extends AnsiBorder {
  const _$AnsiBorderImpl({
    this.type = AnsiBorderType.none,
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

class _$AnsiBorderCopyWithProxy {
  _$AnsiBorderCopyWithProxy(this._value);

  final AnsiBorder _value;

  @pragma('vm:prefer-inline')
  AnsiBorder type(AnsiBorderType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  AnsiBorder style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  AnsiBorder color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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

class $AnsiBorderCopyWithProxyChain<$Result> {
  $AnsiBorderCopyWithProxyChain(this._value, this._chain);

  final AnsiBorder _value;
  final $Result Function(AnsiBorder update) _chain;

  @pragma('vm:prefer-inline')
  $Result type(AnsiBorderType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  $Result style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiBorderCopyWithProxy get copyWith => _$AnsiBorderCopyWithProxy(this);
}
