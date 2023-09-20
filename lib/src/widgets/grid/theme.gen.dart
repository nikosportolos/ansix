// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'theme.dart';

class _$AnsiGridThemeImpl extends AnsiGridTheme {
  const _$AnsiGridThemeImpl({
    this.border = AnsiBorder.$default,
    this.headerTextTheme,
    this.cellTextTheme = const AnsiTextTheme(),
    this.footerTextTheme,
    this.keepSameWidth = true,
    this.orientation = AnsiOrientation.vertical,
    this.transparent = false,
    this.overrideTheme = false,
    this.wrapText = false,
    this.wrapOptions = const WrapOptions(),
  }) : super.ctor();

  @override
  final AnsiBorder border;

  @override
  final AnsiTextTheme? headerTextTheme;

  @override
  final AnsiTextTheme cellTextTheme;

  @override
  final AnsiTextTheme? footerTextTheme;

  @override
  final bool keepSameWidth;

  @override
  final AnsiOrientation orientation;

  @override
  final bool transparent;

  @override
  final bool overrideTheme;

  @override
  final bool wrapText;

  @override
  final WrapOptions wrapOptions;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiGridTheme &&
            runtimeType == other.runtimeType &&
            border == other.border &&
            headerTextTheme == other.headerTextTheme &&
            cellTextTheme == other.cellTextTheme &&
            footerTextTheme == other.footerTextTheme &&
            keepSameWidth == other.keepSameWidth &&
            orientation == other.orientation &&
            transparent == other.transparent &&
            overrideTheme == other.overrideTheme &&
            wrapText == other.wrapText &&
            wrapOptions == other.wrapOptions;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      border,
      headerTextTheme,
      cellTextTheme,
      footerTextTheme,
      keepSameWidth,
      orientation,
      transparent,
      overrideTheme,
      wrapText,
      wrapOptions,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiGridTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiGridTheme@<$hexIdentity>{border: $border, headerTextTheme: $headerTextTheme, cellTextTheme: $cellTextTheme, footerTextTheme: $footerTextTheme, keepSameWidth: $keepSameWidth, orientation: $orientation, transparent: $transparent, overrideTheme: $overrideTheme, wrapText: $wrapText, wrapOptions: $wrapOptions}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiGridTheme;
}

abstract interface class _AnsiGridThemeCopyWithProxy {
  $AnsiBorderCopyWithProxyChain<AnsiGridTheme> get border;

  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>? get headerTextTheme;

  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme> get cellTextTheme;

  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>? get footerTextTheme;

  AnsiGridTheme keepSameWidth(bool newValue);

  AnsiGridTheme orientation(AnsiOrientation newValue);

  AnsiGridTheme transparent(bool newValue);

  AnsiGridTheme overrideTheme(bool newValue);

  AnsiGridTheme wrapText(bool newValue);

  $WrapOptionsCopyWithProxyChain<AnsiGridTheme> get wrapOptions;

  AnsiGridTheme call({
    final AnsiBorder? border,
    final AnsiTextTheme? headerTextTheme,
    final AnsiTextTheme? cellTextTheme,
    final AnsiTextTheme? footerTextTheme,
    final bool? keepSameWidth,
    final AnsiOrientation? orientation,
    final bool? transparent,
    final bool? overrideTheme,
    final bool? wrapText,
    final WrapOptions? wrapOptions,
  });
}

class _AnsiGridThemeCopyWithProxyImpl implements _AnsiGridThemeCopyWithProxy {
  _AnsiGridThemeCopyWithProxyImpl(this._value);

  final AnsiGridTheme _value;

  @pragma('vm:prefer-inline')
  @override
  $AnsiBorderCopyWithProxyChain<AnsiGridTheme> get border =>
      $AnsiBorderCopyWithProxyChain<AnsiGridTheme>(_value.border, (AnsiBorder update) => this(border: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>? get headerTextTheme => _value.headerTextTheme == null
      ? null
      : $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>(
          _value.headerTextTheme!, (AnsiTextTheme? update) => this(headerTextTheme: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme> get cellTextTheme => $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>(
      _value.cellTextTheme, (AnsiTextTheme update) => this(cellTextTheme: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>? get footerTextTheme => _value.footerTextTheme == null
      ? null
      : $AnsiTextThemeCopyWithProxyChain<AnsiGridTheme>(
          _value.footerTextTheme!, (AnsiTextTheme? update) => this(footerTextTheme: update));

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme keepSameWidth(bool newValue) => this(keepSameWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme orientation(AnsiOrientation newValue) => this(orientation: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme transparent(bool newValue) => this(transparent: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme overrideTheme(bool newValue) => this(overrideTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  @override
  $WrapOptionsCopyWithProxyChain<AnsiGridTheme> get wrapOptions => $WrapOptionsCopyWithProxyChain<AnsiGridTheme>(
      _value.wrapOptions, (WrapOptions update) => this(wrapOptions: update));

  @pragma('vm:prefer-inline')
  @override
  AnsiGridTheme call({
    final AnsiBorder? border,
    final Object? headerTextTheme = const Object(),
    final AnsiTextTheme? cellTextTheme,
    final Object? footerTextTheme = const Object(),
    final bool? keepSameWidth,
    final AnsiOrientation? orientation,
    final bool? transparent,
    final bool? overrideTheme,
    final bool? wrapText,
    final WrapOptions? wrapOptions,
  }) {
    return _$AnsiGridThemeImpl(
      border: border ?? _value.border,
      headerTextTheme:
          identical(headerTextTheme, const Object()) ? _value.headerTextTheme : (headerTextTheme as AnsiTextTheme?),
      cellTextTheme: cellTextTheme ?? _value.cellTextTheme,
      footerTextTheme:
          identical(footerTextTheme, const Object()) ? _value.footerTextTheme : (footerTextTheme as AnsiTextTheme?),
      keepSameWidth: keepSameWidth ?? _value.keepSameWidth,
      orientation: orientation ?? _value.orientation,
      transparent: transparent ?? _value.transparent,
      overrideTheme: overrideTheme ?? _value.overrideTheme,
      wrapText: wrapText ?? _value.wrapText,
      wrapOptions: wrapOptions ?? _value.wrapOptions,
    );
  }
}

sealed class $AnsiGridThemeCopyWithProxyChain<$Result> {
  factory $AnsiGridThemeCopyWithProxyChain(
          final AnsiGridTheme value, final $Result Function(AnsiGridTheme update) chain) =
      _AnsiGridThemeCopyWithProxyChainImpl<$Result>;

  $Result border(AnsiBorder newValue);

  $Result headerTextTheme(AnsiTextTheme? newValue);

  $Result cellTextTheme(AnsiTextTheme newValue);

  $Result footerTextTheme(AnsiTextTheme? newValue);

  $Result keepSameWidth(bool newValue);

  $Result orientation(AnsiOrientation newValue);

  $Result transparent(bool newValue);

  $Result overrideTheme(bool newValue);

  $Result wrapText(bool newValue);

  $Result wrapOptions(WrapOptions newValue);

  $Result call({
    final AnsiBorder? border,
    final AnsiTextTheme? headerTextTheme,
    final AnsiTextTheme? cellTextTheme,
    final AnsiTextTheme? footerTextTheme,
    final bool? keepSameWidth,
    final AnsiOrientation? orientation,
    final bool? transparent,
    final bool? overrideTheme,
    final bool? wrapText,
    final WrapOptions? wrapOptions,
  });
}

class _AnsiGridThemeCopyWithProxyChainImpl<$Result> implements $AnsiGridThemeCopyWithProxyChain<$Result> {
  _AnsiGridThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiGridTheme _value;
  final $Result Function(AnsiGridTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result border(AnsiBorder newValue) => this(border: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result headerTextTheme(AnsiTextTheme? newValue) => this(headerTextTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result cellTextTheme(AnsiTextTheme newValue) => this(cellTextTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result footerTextTheme(AnsiTextTheme? newValue) => this(footerTextTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result keepSameWidth(bool newValue) => this(keepSameWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result orientation(AnsiOrientation newValue) => this(orientation: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result transparent(bool newValue) => this(transparent: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result overrideTheme(bool newValue) => this(overrideTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result wrapOptions(WrapOptions newValue) => this(wrapOptions: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiBorder? border,
    final Object? headerTextTheme = const Object(),
    final AnsiTextTheme? cellTextTheme,
    final Object? footerTextTheme = const Object(),
    final bool? keepSameWidth,
    final AnsiOrientation? orientation,
    final bool? transparent,
    final bool? overrideTheme,
    final bool? wrapText,
    final WrapOptions? wrapOptions,
  }) {
    return _chain(_$AnsiGridThemeImpl(
      border: border ?? _value.border,
      headerTextTheme:
          identical(headerTextTheme, const Object()) ? _value.headerTextTheme : (headerTextTheme as AnsiTextTheme?),
      cellTextTheme: cellTextTheme ?? _value.cellTextTheme,
      footerTextTheme:
          identical(footerTextTheme, const Object()) ? _value.footerTextTheme : (footerTextTheme as AnsiTextTheme?),
      keepSameWidth: keepSameWidth ?? _value.keepSameWidth,
      orientation: orientation ?? _value.orientation,
      transparent: transparent ?? _value.transparent,
      overrideTheme: overrideTheme ?? _value.overrideTheme,
      wrapText: wrapText ?? _value.wrapText,
      wrapOptions: wrapOptions ?? _value.wrapOptions,
    ));
  }
}

extension $AnsiGridThemeExtension on AnsiGridTheme {
  _AnsiGridThemeCopyWithProxy get copyWith => _AnsiGridThemeCopyWithProxyImpl(this);
}
