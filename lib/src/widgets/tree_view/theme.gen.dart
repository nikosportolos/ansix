// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'theme.dart';

class _$AnsiTreeViewThemeImpl extends AnsiTreeViewTheme {
  const _$AnsiTreeViewThemeImpl({
    this.compact = true,
    this.sorted = false,
    this.showListItemIndex = false,
    this.anchorTheme = const AnsiTreeAnchorTheme(),
    this.keyTheme = const AnsiTreeNodeKeyTheme(textStyle: AnsiTextStyle(bold: true)),
    this.valueTheme = const AnsiTreeNodeValueTheme(),
    this.headerTheme = const AnsiTreeHeaderTheme(),
  }) : super.ctor();

  @override
  final bool compact;

  @override
  final bool sorted;

  @override
  final bool showListItemIndex;

  @override
  final AnsiTreeAnchorTheme anchorTheme;

  @override
  final AnsiTreeNodeKeyTheme keyTheme;

  @override
  final AnsiTreeNodeValueTheme valueTheme;

  @override
  final AnsiTreeHeaderTheme headerTheme;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeViewTheme &&
            runtimeType == other.runtimeType &&
            compact == other.compact &&
            sorted == other.sorted &&
            showListItemIndex == other.showListItemIndex &&
            anchorTheme == other.anchorTheme &&
            keyTheme == other.keyTheme &&
            valueTheme == other.valueTheme &&
            headerTheme == other.headerTheme;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      compact,
      sorted,
      showListItemIndex,
      anchorTheme,
      keyTheme,
      valueTheme,
      headerTheme,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeViewTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTreeViewTheme@<$hexIdentity>{compact: $compact, sorted: $sorted, showListItemIndex: $showListItemIndex, anchorTheme: $anchorTheme, keyTheme: $keyTheme, valueTheme: $valueTheme, headerTheme: $headerTheme}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeViewTheme;
}

abstract interface class _AnsiTreeViewThemeCopyWithProxy {
  AnsiTreeViewTheme compact(bool newValue);

  AnsiTreeViewTheme sorted(bool newValue);

  AnsiTreeViewTheme showListItemIndex(bool newValue);

  $AnsiTreeAnchorThemeCopyWithProxyChain<AnsiTreeViewTheme> get anchorTheme;

  $AnsiTreeNodeKeyThemeCopyWithProxyChain<AnsiTreeViewTheme> get keyTheme;

  $AnsiTreeNodeValueThemeCopyWithProxyChain<AnsiTreeViewTheme> get valueTheme;

  $AnsiTreeHeaderThemeCopyWithProxyChain<AnsiTreeViewTheme> get headerTheme;

  AnsiTreeViewTheme call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeKeyTheme? keyTheme,
    final AnsiTreeNodeValueTheme? valueTheme,
    final AnsiTreeHeaderTheme? headerTheme,
  });
}

class _AnsiTreeViewThemeCopyWithProxyImpl implements _AnsiTreeViewThemeCopyWithProxy {
  _AnsiTreeViewThemeCopyWithProxyImpl(this._value);

  final AnsiTreeViewTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeViewTheme compact(bool newValue) => this(compact: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeViewTheme sorted(bool newValue) => this(sorted: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeViewTheme showListItemIndex(bool newValue) => this(showListItemIndex: newValue);

  @pragma('vm:prefer-inline')
  @override
  $AnsiTreeAnchorThemeCopyWithProxyChain<AnsiTreeViewTheme> get anchorTheme =>
      $AnsiTreeAnchorThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.anchorTheme, (AnsiTreeAnchorTheme update) => this(anchorTheme: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTreeNodeKeyThemeCopyWithProxyChain<AnsiTreeViewTheme> get keyTheme =>
      $AnsiTreeNodeKeyThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.keyTheme, (AnsiTreeNodeKeyTheme update) => this(keyTheme: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTreeNodeValueThemeCopyWithProxyChain<AnsiTreeViewTheme> get valueTheme =>
      $AnsiTreeNodeValueThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.valueTheme, (AnsiTreeNodeValueTheme update) => this(valueTheme: update));

  @pragma('vm:prefer-inline')
  @override
  $AnsiTreeHeaderThemeCopyWithProxyChain<AnsiTreeViewTheme> get headerTheme =>
      $AnsiTreeHeaderThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.headerTheme, (AnsiTreeHeaderTheme update) => this(headerTheme: update));

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeViewTheme call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeKeyTheme? keyTheme,
    final AnsiTreeNodeValueTheme? valueTheme,
    final AnsiTreeHeaderTheme? headerTheme,
  }) {
    return _$AnsiTreeViewThemeImpl(
      compact: compact ?? _value.compact,
      sorted: sorted ?? _value.sorted,
      showListItemIndex: showListItemIndex ?? _value.showListItemIndex,
      anchorTheme: anchorTheme ?? _value.anchorTheme,
      keyTheme: keyTheme ?? _value.keyTheme,
      valueTheme: valueTheme ?? _value.valueTheme,
      headerTheme: headerTheme ?? _value.headerTheme,
    );
  }
}

sealed class $AnsiTreeViewThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeViewThemeCopyWithProxyChain(
          final AnsiTreeViewTheme value, final $Result Function(AnsiTreeViewTheme update) chain) =
      _AnsiTreeViewThemeCopyWithProxyChainImpl<$Result>;

  $Result compact(bool newValue);

  $Result sorted(bool newValue);

  $Result showListItemIndex(bool newValue);

  $Result anchorTheme(AnsiTreeAnchorTheme newValue);

  $Result keyTheme(AnsiTreeNodeKeyTheme newValue);

  $Result valueTheme(AnsiTreeNodeValueTheme newValue);

  $Result headerTheme(AnsiTreeHeaderTheme newValue);

  $Result call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeKeyTheme? keyTheme,
    final AnsiTreeNodeValueTheme? valueTheme,
    final AnsiTreeHeaderTheme? headerTheme,
  });
}

class _AnsiTreeViewThemeCopyWithProxyChainImpl<$Result> implements $AnsiTreeViewThemeCopyWithProxyChain<$Result> {
  _AnsiTreeViewThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeViewTheme _value;
  final $Result Function(AnsiTreeViewTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result compact(bool newValue) => this(compact: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result sorted(bool newValue) => this(sorted: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result showListItemIndex(bool newValue) => this(showListItemIndex: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result anchorTheme(AnsiTreeAnchorTheme newValue) => this(anchorTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result keyTheme(AnsiTreeNodeKeyTheme newValue) => this(keyTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result valueTheme(AnsiTreeNodeValueTheme newValue) => this(valueTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result headerTheme(AnsiTreeHeaderTheme newValue) => this(headerTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeKeyTheme? keyTheme,
    final AnsiTreeNodeValueTheme? valueTheme,
    final AnsiTreeHeaderTheme? headerTheme,
  }) {
    return _chain(_$AnsiTreeViewThemeImpl(
      compact: compact ?? _value.compact,
      sorted: sorted ?? _value.sorted,
      showListItemIndex: showListItemIndex ?? _value.showListItemIndex,
      anchorTheme: anchorTheme ?? _value.anchorTheme,
      keyTheme: keyTheme ?? _value.keyTheme,
      valueTheme: valueTheme ?? _value.valueTheme,
      headerTheme: headerTheme ?? _value.headerTheme,
    ));
  }
}

extension $AnsiTreeViewThemeExtension on AnsiTreeViewTheme {
  _AnsiTreeViewThemeCopyWithProxy get copyWith => _AnsiTreeViewThemeCopyWithProxyImpl(this);
}

class _$AnsiTreeAnchorThemeImpl extends AnsiTreeAnchorTheme {
  const _$AnsiTreeAnchorThemeImpl({
    this.style = AnsiBorderStyle.square,
    this.color = AnsiColor.none,
  }) : super.ctor();

  @override
  final AnsiBorderStyle style;

  @override
  final AnsiColor color;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeAnchorTheme &&
            runtimeType == other.runtimeType &&
            style == other.style &&
            color == other.color;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      style,
      color,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeAnchorTheme{<optimized out>}';
    assert(() {
      toStringOutput = 'AnsiTreeAnchorTheme@<$hexIdentity>{style: $style, color: $color}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeAnchorTheme;
}

abstract interface class _AnsiTreeAnchorThemeCopyWithProxy {
  AnsiTreeAnchorTheme style(AnsiBorderStyle newValue);

  AnsiTreeAnchorTheme color(AnsiColor newValue);

  AnsiTreeAnchorTheme call({
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  });
}

class _AnsiTreeAnchorThemeCopyWithProxyImpl implements _AnsiTreeAnchorThemeCopyWithProxy {
  _AnsiTreeAnchorThemeCopyWithProxyImpl(this._value);

  final AnsiTreeAnchorTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeAnchorTheme style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeAnchorTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeAnchorTheme call({
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  }) {
    return _$AnsiTreeAnchorThemeImpl(
      style: style ?? _value.style,
      color: color ?? _value.color,
    );
  }
}

sealed class $AnsiTreeAnchorThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeAnchorThemeCopyWithProxyChain(
          final AnsiTreeAnchorTheme value, final $Result Function(AnsiTreeAnchorTheme update) chain) =
      _AnsiTreeAnchorThemeCopyWithProxyChainImpl<$Result>;

  $Result style(AnsiBorderStyle newValue);

  $Result color(AnsiColor newValue);

  $Result call({
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  });
}

class _AnsiTreeAnchorThemeCopyWithProxyChainImpl<$Result> implements $AnsiTreeAnchorThemeCopyWithProxyChain<$Result> {
  _AnsiTreeAnchorThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeAnchorTheme _value;
  final $Result Function(AnsiTreeAnchorTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiBorderStyle? style,
    final AnsiColor? color,
  }) {
    return _chain(_$AnsiTreeAnchorThemeImpl(
      style: style ?? _value.style,
      color: color ?? _value.color,
    ));
  }
}

extension $AnsiTreeAnchorThemeExtension on AnsiTreeAnchorTheme {
  _AnsiTreeAnchorThemeCopyWithProxy get copyWith => _AnsiTreeAnchorThemeCopyWithProxyImpl(this);
}

class _$AnsiTreeHeaderThemeImpl extends AnsiTreeHeaderTheme {
  const _$AnsiTreeHeaderThemeImpl({
    this.border = const AnsiBorder(),
    this.textTheme = const AnsiTextTheme(),
    this.showHash = true,
  }) : super.ctor();

  @override
  final AnsiBorder border;

  @override
  final AnsiTextTheme textTheme;

  @override
  final bool showHash;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeHeaderTheme &&
            runtimeType == other.runtimeType &&
            border == other.border &&
            textTheme == other.textTheme &&
            showHash == other.showHash;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      border,
      textTheme,
      showHash,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeHeaderTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTreeHeaderTheme@<$hexIdentity>{border: $border, textTheme: $textTheme, showHash: $showHash}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeHeaderTheme;
}

abstract interface class _AnsiTreeHeaderThemeCopyWithProxy {
  AnsiTreeHeaderTheme border(AnsiBorder newValue);

  AnsiTreeHeaderTheme textTheme(AnsiTextTheme newValue);

  AnsiTreeHeaderTheme showHash(bool newValue);

  AnsiTreeHeaderTheme call({
    final AnsiBorder? border,
    final AnsiTextTheme? textTheme,
    final bool? showHash,
  });
}

class _AnsiTreeHeaderThemeCopyWithProxyImpl implements _AnsiTreeHeaderThemeCopyWithProxy {
  _AnsiTreeHeaderThemeCopyWithProxyImpl(this._value);

  final AnsiTreeHeaderTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeHeaderTheme border(AnsiBorder newValue) => this(border: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeHeaderTheme textTheme(AnsiTextTheme newValue) => this(textTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeHeaderTheme showHash(bool newValue) => this(showHash: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeHeaderTheme call({
    final AnsiBorder? border,
    final AnsiTextTheme? textTheme,
    final bool? showHash,
  }) {
    return _$AnsiTreeHeaderThemeImpl(
      border: border ?? _value.border,
      textTheme: textTheme ?? _value.textTheme,
      showHash: showHash ?? _value.showHash,
    );
  }
}

sealed class $AnsiTreeHeaderThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeHeaderThemeCopyWithProxyChain(
          final AnsiTreeHeaderTheme value, final $Result Function(AnsiTreeHeaderTheme update) chain) =
      _AnsiTreeHeaderThemeCopyWithProxyChainImpl<$Result>;

  $Result border(AnsiBorder newValue);

  $Result textTheme(AnsiTextTheme newValue);

  $Result showHash(bool newValue);

  $Result call({
    final AnsiBorder? border,
    final AnsiTextTheme? textTheme,
    final bool? showHash,
  });
}

class _AnsiTreeHeaderThemeCopyWithProxyChainImpl<$Result> implements $AnsiTreeHeaderThemeCopyWithProxyChain<$Result> {
  _AnsiTreeHeaderThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeHeaderTheme _value;
  final $Result Function(AnsiTreeHeaderTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result border(AnsiBorder newValue) => this(border: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result textTheme(AnsiTextTheme newValue) => this(textTheme: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result showHash(bool newValue) => this(showHash: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiBorder? border,
    final AnsiTextTheme? textTheme,
    final bool? showHash,
  }) {
    return _chain(_$AnsiTreeHeaderThemeImpl(
      border: border ?? _value.border,
      textTheme: textTheme ?? _value.textTheme,
      showHash: showHash ?? _value.showHash,
    ));
  }
}

extension $AnsiTreeHeaderThemeExtension on AnsiTreeHeaderTheme {
  _AnsiTreeHeaderThemeCopyWithProxy get copyWith => _AnsiTreeHeaderThemeCopyWithProxyImpl(this);
}

class _$AnsiTreeNodeThemeImpl extends AnsiTreeNodeTheme {
  const _$AnsiTreeNodeThemeImpl({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
  }) : super.ctor();

  @override
  final AnsiTextStyle textStyle;

  @override
  final AnsiColor color;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeNodeTheme &&
            runtimeType == other.runtimeType &&
            textStyle == other.textStyle &&
            color == other.color;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      textStyle,
      color,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeNodeTheme{<optimized out>}';
    assert(() {
      toStringOutput = 'AnsiTreeNodeTheme@<$hexIdentity>{textStyle: $textStyle, color: $color}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeNodeTheme;
}

abstract interface class _AnsiTreeNodeThemeCopyWithProxy {
  AnsiTreeNodeTheme textStyle(AnsiTextStyle newValue);

  AnsiTreeNodeTheme color(AnsiColor newValue);

  AnsiTreeNodeTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  });
}

class _AnsiTreeNodeThemeCopyWithProxyImpl implements _AnsiTreeNodeThemeCopyWithProxy {
  _AnsiTreeNodeThemeCopyWithProxyImpl(this._value);

  final AnsiTreeNodeTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  }) {
    return _$AnsiTreeNodeThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
    );
  }
}

sealed class $AnsiTreeNodeThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeNodeThemeCopyWithProxyChain(
          final AnsiTreeNodeTheme value, final $Result Function(AnsiTreeNodeTheme update) chain) =
      _AnsiTreeNodeThemeCopyWithProxyChainImpl<$Result>;

  $Result textStyle(AnsiTextStyle newValue);

  $Result color(AnsiColor newValue);

  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  });
}

class _AnsiTreeNodeThemeCopyWithProxyChainImpl<$Result> implements $AnsiTreeNodeThemeCopyWithProxyChain<$Result> {
  _AnsiTreeNodeThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeNodeTheme _value;
  final $Result Function(AnsiTreeNodeTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  }) {
    return _chain(_$AnsiTreeNodeThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
    ));
  }
}

extension $AnsiTreeNodeThemeExtension on AnsiTreeNodeTheme {
  _AnsiTreeNodeThemeCopyWithProxy get copyWith => _AnsiTreeNodeThemeCopyWithProxyImpl(this);
}

class _$AnsiTreeNodeKeyThemeImpl extends AnsiTreeNodeKeyTheme {
  const _$AnsiTreeNodeKeyThemeImpl({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
  }) : super.ctor();

  @override
  final AnsiTextStyle textStyle;

  @override
  final AnsiColor color;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeNodeKeyTheme &&
            runtimeType == other.runtimeType &&
            textStyle == other.textStyle &&
            color == other.color;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      textStyle,
      color,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeNodeKeyTheme{<optimized out>}';
    assert(() {
      toStringOutput = 'AnsiTreeNodeKeyTheme@<$hexIdentity>{textStyle: $textStyle, color: $color}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeNodeKeyTheme;
}

abstract interface class _AnsiTreeNodeKeyThemeCopyWithProxy {
  AnsiTreeNodeKeyTheme textStyle(AnsiTextStyle newValue);

  AnsiTreeNodeKeyTheme color(AnsiColor newValue);

  AnsiTreeNodeKeyTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  });
}

class _AnsiTreeNodeKeyThemeCopyWithProxyImpl implements _AnsiTreeNodeKeyThemeCopyWithProxy {
  _AnsiTreeNodeKeyThemeCopyWithProxyImpl(this._value);

  final AnsiTreeNodeKeyTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeKeyTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeKeyTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeKeyTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  }) {
    return _$AnsiTreeNodeKeyThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
    );
  }
}

sealed class $AnsiTreeNodeKeyThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeNodeKeyThemeCopyWithProxyChain(
          final AnsiTreeNodeKeyTheme value, final $Result Function(AnsiTreeNodeKeyTheme update) chain) =
      _AnsiTreeNodeKeyThemeCopyWithProxyChainImpl<$Result>;

  $Result textStyle(AnsiTextStyle newValue);

  $Result color(AnsiColor newValue);

  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  });
}

class _AnsiTreeNodeKeyThemeCopyWithProxyChainImpl<$Result> implements $AnsiTreeNodeKeyThemeCopyWithProxyChain<$Result> {
  _AnsiTreeNodeKeyThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeNodeKeyTheme _value;
  final $Result Function(AnsiTreeNodeKeyTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
  }) {
    return _chain(_$AnsiTreeNodeKeyThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
    ));
  }
}

extension $AnsiTreeNodeKeyThemeExtension on AnsiTreeNodeKeyTheme {
  _AnsiTreeNodeKeyThemeCopyWithProxy get copyWith => _AnsiTreeNodeKeyThemeCopyWithProxyImpl(this);
}

class _$AnsiTreeNodeValueThemeImpl extends AnsiTreeNodeValueTheme {
  const _$AnsiTreeNodeValueThemeImpl({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
    this.wrapText = false,
    this.fixedWidth,
    this.wrapOptions = const WrapOptions(),
    this.alignment = AnsiTextAlignment.left,
  }) : super.ctor();

  @override
  final AnsiTextStyle textStyle;

  @override
  final AnsiColor color;

  @override
  final bool wrapText;

  @override
  final int? fixedWidth;

  @override
  final WrapOptions wrapOptions;

  @override
  final AnsiTextAlignment alignment;

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiTreeNodeValueTheme &&
            runtimeType == other.runtimeType &&
            textStyle == other.textStyle &&
            color == other.color &&
            wrapText == other.wrapText &&
            fixedWidth == other.fixedWidth &&
            wrapOptions == other.wrapOptions &&
            alignment == other.alignment;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      textStyle,
      color,
      wrapText,
      fixedWidth,
      wrapOptions,
      alignment,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeNodeValueTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTreeNodeValueTheme@<$hexIdentity>{textStyle: $textStyle, color: $color, wrapText: $wrapText, fixedWidth: $fixedWidth, wrapOptions: $wrapOptions, alignment: $alignment}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeNodeValueTheme;
}

abstract interface class _AnsiTreeNodeValueThemeCopyWithProxy {
  AnsiTreeNodeValueTheme textStyle(AnsiTextStyle newValue);

  AnsiTreeNodeValueTheme color(AnsiColor newValue);

  AnsiTreeNodeValueTheme wrapText(bool newValue);

  AnsiTreeNodeValueTheme fixedWidth(int? newValue);

  AnsiTreeNodeValueTheme wrapOptions(WrapOptions newValue);

  AnsiTreeNodeValueTheme alignment(AnsiTextAlignment newValue);

  AnsiTreeNodeValueTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final int? fixedWidth,
    final WrapOptions? wrapOptions,
    final AnsiTextAlignment? alignment,
  });
}

class _AnsiTreeNodeValueThemeCopyWithProxyImpl implements _AnsiTreeNodeValueThemeCopyWithProxy {
  _AnsiTreeNodeValueThemeCopyWithProxyImpl(this._value);

  final AnsiTreeNodeValueTheme _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme wrapOptions(WrapOptions newValue) => this(wrapOptions: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiTreeNodeValueTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final Object? fixedWidth = const Object(),
    final WrapOptions? wrapOptions,
    final AnsiTextAlignment? alignment,
  }) {
    return _$AnsiTreeNodeValueThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
      wrapText: wrapText ?? _value.wrapText,
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
      wrapOptions: wrapOptions ?? _value.wrapOptions,
      alignment: alignment ?? _value.alignment,
    );
  }
}

sealed class $AnsiTreeNodeValueThemeCopyWithProxyChain<$Result> {
  factory $AnsiTreeNodeValueThemeCopyWithProxyChain(
          final AnsiTreeNodeValueTheme value, final $Result Function(AnsiTreeNodeValueTheme update) chain) =
      _AnsiTreeNodeValueThemeCopyWithProxyChainImpl<$Result>;

  $Result textStyle(AnsiTextStyle newValue);

  $Result color(AnsiColor newValue);

  $Result wrapText(bool newValue);

  $Result fixedWidth(int? newValue);

  $Result wrapOptions(WrapOptions newValue);

  $Result alignment(AnsiTextAlignment newValue);

  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final int? fixedWidth,
    final WrapOptions? wrapOptions,
    final AnsiTextAlignment? alignment,
  });
}

class _AnsiTreeNodeValueThemeCopyWithProxyChainImpl<$Result>
    implements $AnsiTreeNodeValueThemeCopyWithProxyChain<$Result> {
  _AnsiTreeNodeValueThemeCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiTreeNodeValueTheme _value;
  final $Result Function(AnsiTreeNodeValueTheme update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result fixedWidth(int? newValue) => this(fixedWidth: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result wrapOptions(WrapOptions newValue) => this(wrapOptions: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final Object? fixedWidth = const Object(),
    final WrapOptions? wrapOptions,
    final AnsiTextAlignment? alignment,
  }) {
    return _chain(_$AnsiTreeNodeValueThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
      wrapText: wrapText ?? _value.wrapText,
      fixedWidth: identical(fixedWidth, const Object()) ? _value.fixedWidth : (fixedWidth as int?),
      wrapOptions: wrapOptions ?? _value.wrapOptions,
      alignment: alignment ?? _value.alignment,
    ));
  }
}

extension $AnsiTreeNodeValueThemeExtension on AnsiTreeNodeValueTheme {
  _AnsiTreeNodeValueThemeCopyWithProxy get copyWith => _AnsiTreeNodeValueThemeCopyWithProxyImpl(this);
}
