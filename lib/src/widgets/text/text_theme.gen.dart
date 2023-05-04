// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'text_theme.dart';

class _$AnsiTextThemeImpl extends AnsiTextTheme {
  const _$AnsiTextThemeImpl({
    this.foregroundColor = AnsiColor.none,
    this.backgroundColor = AnsiColor.none,
    this.textStyle = const AnsiTextStyle(),
    this.padding = AnsiPadding.none,
    this.textAlignment = AnsiTextAlignment.left,
    this.fixedWidth,
  }) : super.ctor();

  @override
  final AnsiColor? foregroundColor;

  @override
  final AnsiColor? backgroundColor;

  @override
  final AnsiTextStyle? textStyle;

  @override
  final AnsiPadding? padding;

  @override
  final AnsiTextAlignment? textAlignment;

  @override
  final int? fixedWidth;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTextTheme &&
            runtimeType == other.runtimeType &&
            foregroundColor == other.foregroundColor &&
            backgroundColor == other.backgroundColor &&
            textStyle == other.textStyle &&
            padding == other.padding &&
            textAlignment == other.textAlignment &&
            fixedWidth == other.fixedWidth;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      foregroundColor,
      backgroundColor,
      textStyle,
      padding,
      textAlignment,
      fixedWidth,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTextTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTextTheme@<$hexIdentity>{foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, textStyle: $textStyle, padding: $padding, textAlignment: $textAlignment, fixedWidth: $fixedWidth}';
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
  AnsiTextTheme foregroundColor(AnsiColor? newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme backgroundColor(AnsiColor? newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme textStyle(AnsiTextStyle? newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme padding(AnsiPadding? newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme textAlignment(AnsiTextAlignment? newValue) => this(textAlignment: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  AnsiTextTheme call({
    final Object? foregroundColor = const Object(),
    final Object? backgroundColor = const Object(),
    final Object? textStyle = const Object(),
    final Object? padding = const Object(),
    final Object? textAlignment = const Object(),
    final Object? fixedWidth = const Object(),
  }) {
    return _$AnsiTextThemeImpl(
      foregroundColor:
          identical(foregroundColor, const Object()) ? _value.foregroundColor : (foregroundColor as AnsiColor?),
      backgroundColor:
          identical(backgroundColor, const Object()) ? _value.backgroundColor : (backgroundColor as AnsiColor?),
      textStyle: identical(textStyle, const Object()) ? _value.textStyle : (textStyle as AnsiTextStyle?),
      padding: identical(padding, const Object()) ? _value.padding : (padding as AnsiPadding?),
      textAlignment:
          identical(textAlignment, const Object()) ? _value.textAlignment : (textAlignment as AnsiTextAlignment?),
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
    );
  }
}

class $AnsiTextThemeCopyWithProxyChain<$Result> {
  $AnsiTextThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTextTheme _value;
  final $Result Function(AnsiTextTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result foregroundColor(AnsiColor? newValue) => this(foregroundColor: newValue);

  @pragma('vm:prefer-inline')
  $Result backgroundColor(AnsiColor? newValue) => this(backgroundColor: newValue);

  @pragma('vm:prefer-inline')
  $Result textStyle(AnsiTextStyle? newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  $Result padding(AnsiPadding? newValue) => this(padding: newValue);

  @pragma('vm:prefer-inline')
  $Result textAlignment(AnsiTextAlignment? newValue) => this(textAlignment: newValue);

  @pragma('vm:prefer-inline')
  $Result fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final Object? foregroundColor = const Object(),
    final Object? backgroundColor = const Object(),
    final Object? textStyle = const Object(),
    final Object? padding = const Object(),
    final Object? textAlignment = const Object(),
    final Object? fixedWidth = const Object(),
  }) {
    return _chain(_$AnsiTextThemeImpl(
      foregroundColor:
          identical(foregroundColor, const Object()) ? _value.foregroundColor : (foregroundColor as AnsiColor?),
      backgroundColor:
          identical(backgroundColor, const Object()) ? _value.backgroundColor : (backgroundColor as AnsiColor?),
      textStyle: identical(textStyle, const Object()) ? _value.textStyle : (textStyle as AnsiTextStyle?),
      padding: identical(padding, const Object()) ? _value.padding : (padding as AnsiPadding?),
      textAlignment:
          identical(textAlignment, const Object()) ? _value.textAlignment : (textAlignment as AnsiTextAlignment?),
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
    ));
  }
}

extension $AnsiTextThemeExtension on AnsiTextTheme {
  _$AnsiTextThemeCopyWithProxy get copyWith => _$AnsiTextThemeCopyWithProxy(this);
}
