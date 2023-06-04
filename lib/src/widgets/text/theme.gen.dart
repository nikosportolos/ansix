// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'theme.dart';

class _$AnsiTextThemeImpl extends AnsiTextTheme {
  const _$AnsiTextThemeImpl({
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.style = const AnsiTextStyle(),
    this.padding = AnsiPadding.none,
    this.alignment = AnsiTextAlignment.left,
    this.fixedWidth,
  }) : super.ctor();

  @override
  final AnsiColor foregroundColor;

  @override
  final AnsiColor backgroundColor;

  @override
  final AnsiTextStyle style;

  @override
  final AnsiPadding padding;

  @override
  final AnsiTextAlignment alignment;

  @override
  final int? fixedWidth;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTextTheme &&
            runtimeType == other.runtimeType &&
            foregroundColor == other.foregroundColor &&
            backgroundColor == other.backgroundColor &&
            style == other.style &&
            padding == other.padding &&
            alignment == other.alignment &&
            fixedWidth == other.fixedWidth;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      foregroundColor,
      backgroundColor,
      style,
      padding,
      alignment,
      fixedWidth,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTextTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTextTheme@<$hexIdentity>{foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, style: $style, padding: $padding, alignment: $alignment, fixedWidth: $fixedWidth}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTextTheme;
}

class _$AnsiTextThemeCopyWithProxy {
  _$AnsiTextThemeCopyWithProxy(this._value);

  final AnsiTextTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTextTheme foregroundColor(AnsiColor newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme backgroundColor(AnsiColor newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme style(AnsiTextStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme padding(AnsiPadding newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme call({
    final AnsiColor? foregroundColor,
    final AnsiColor? backgroundColor,
    final AnsiTextStyle? style,
    final AnsiPadding? padding,
    final AnsiTextAlignment? alignment,
    final Object? fixedWidth = const Object(),
  }) {
    return _$AnsiTextThemeImpl(
      foregroundColor: foregroundColor ?? _value.foregroundColor,
      backgroundColor: backgroundColor ?? _value.backgroundColor,
      style: style ?? _value.style,
      padding: padding ?? _value.padding,
      alignment: alignment ?? _value.alignment,
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
    );
  }
}

class $AnsiTextThemeCopyWithProxyChain<$Result> {
  $AnsiTextThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTextTheme _value;
  final $Result Function(AnsiTextTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result foregroundColor(AnsiColor newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  $Result backgroundColor(AnsiColor newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  $Result style(AnsiTextStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  $Result padding(AnsiPadding newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  $Result alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  $Result fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final AnsiColor? foregroundColor,
    final AnsiColor? backgroundColor,
    final AnsiTextStyle? style,
    final AnsiPadding? padding,
    final AnsiTextAlignment? alignment,
    final Object? fixedWidth = const Object(),
  }) {
    return _chain(_$AnsiTextThemeImpl(
      foregroundColor: foregroundColor ?? _value.foregroundColor,
      backgroundColor: backgroundColor ?? _value.backgroundColor,
      style: style ?? _value.style,
      padding: padding ?? _value.padding,
      alignment: alignment ?? _value.alignment,
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
    ));
  }
}

extension $AnsiTextThemeExtension on AnsiTextTheme {
  _$AnsiTextThemeCopyWithProxy get copyWith => _$AnsiTextThemeCopyWithProxy(this);
}
