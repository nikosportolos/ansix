// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

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

abstract interface class _AnsiTextThemeCopyWithProxy {
  AnsiTextTheme foregroundColor(AnsiColor newValue);

  AnsiTextTheme backgroundColor(AnsiColor newValue);

  AnsiTextTheme style(AnsiTextStyle newValue);

  AnsiTextTheme padding(AnsiPadding newValue);

  AnsiTextTheme alignment(AnsiTextAlignment newValue);

  AnsiTextTheme fixedWidth(int? newValue);

  AnsiTextTheme call({
    final AnsiColor foregroundColor,
    final AnsiColor backgroundColor,
    final AnsiTextStyle style,
    final AnsiPadding padding,
    final AnsiTextAlignment alignment,
    final int? fixedWidth,
  });
}

class _AnsiTextThemeCopyWithProxyImpl implements _AnsiTextThemeCopyWithProxy {
  _AnsiTextThemeCopyWithProxyImpl(this._value);

  final AnsiTextTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme foregroundColor(AnsiColor newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme backgroundColor(AnsiColor newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme style(AnsiTextStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme padding(AnsiPadding newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTextTheme fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
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

sealed class $AnsiTextThemeCopyWithProxyChain<$Result> {
  factory $AnsiTextThemeCopyWithProxyChain(
          final AnsiTextTheme value, final $Result Function(AnsiTextTheme update) chain) =
      _AnsiTextThemeCopyWithProxyChainImpl<$Result>;

  $Result foregroundColor(AnsiColor newValue);

  $Result backgroundColor(AnsiColor newValue);

  $Result style(AnsiTextStyle newValue);

  $Result padding(AnsiPadding newValue);

  $Result alignment(AnsiTextAlignment newValue);

  $Result fixedWidth(int? newValue);

  $Result call({
    final AnsiColor foregroundColor,
    final AnsiColor backgroundColor,
    final AnsiTextStyle style,
    final AnsiPadding padding,
    final AnsiTextAlignment alignment,
    final int? fixedWidth,
  });
}

class _AnsiTextThemeCopyWithProxyChainImpl<$Result> implements $AnsiTextThemeCopyWithProxyChain<$Result> {
  _AnsiTextThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTextTheme _value;
  final $Result Function(AnsiTextTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result foregroundColor(AnsiColor newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result backgroundColor(AnsiColor newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result style(AnsiTextStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result padding(AnsiPadding newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
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
  _AnsiTextThemeCopyWithProxy get copyWith => _AnsiTextThemeCopyWithProxyImpl(this);
}
