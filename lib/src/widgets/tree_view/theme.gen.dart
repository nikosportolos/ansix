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

class _$AnsiTreeViewThemeCopyWithProxy {
  _$AnsiTreeViewThemeCopyWithProxy(this._value);

  final AnsiTreeViewTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme compact(bool newValue) => this(compact: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme sorted(bool newValue) => this(sorted: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme showListItemIndex(bool newValue) => this(showListItemIndex: newValue);
  @pragma('vm:prefer-inline')
  $AnsiTreeAnchorThemeCopyWithProxyChain<AnsiTreeViewTheme> get anchorTheme =>
      $AnsiTreeAnchorThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.anchorTheme, (AnsiTreeAnchorTheme update) => this(anchorTheme: update));

  @pragma('vm:prefer-inline')
  $AnsiTreeNodeKeyThemeCopyWithProxyChain<AnsiTreeViewTheme> get keyTheme =>
      $AnsiTreeNodeKeyThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.keyTheme, (AnsiTreeNodeKeyTheme update) => this(keyTheme: update));

  @pragma('vm:prefer-inline')
  $AnsiTreeNodeValueThemeCopyWithProxyChain<AnsiTreeViewTheme> get valueTheme =>
      $AnsiTreeNodeValueThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.valueTheme, (AnsiTreeNodeValueTheme update) => this(valueTheme: update));

  @pragma('vm:prefer-inline')
  $AnsiTreeHeaderThemeCopyWithProxyChain<AnsiTreeViewTheme> get headerTheme =>
      $AnsiTreeHeaderThemeCopyWithProxyChain<AnsiTreeViewTheme>(
          _value.headerTheme, (AnsiTreeHeaderTheme update) => this(headerTheme: update));

  @pragma('vm:prefer-inline')
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

class $AnsiTreeViewThemeCopyWithProxyChain<$Result> {
  $AnsiTreeViewThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeViewTheme _value;
  final $Result Function(AnsiTreeViewTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result compact(bool newValue) => this(compact: newValue);

  @pragma('vm:prefer-inline')
  $Result sorted(bool newValue) => this(sorted: newValue);

  @pragma('vm:prefer-inline')
  $Result showListItemIndex(bool newValue) => this(showListItemIndex: newValue);

  @pragma('vm:prefer-inline')
  $Result anchorTheme(AnsiTreeAnchorTheme newValue) => this(anchorTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result keyTheme(AnsiTreeNodeKeyTheme newValue) => this(keyTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result valueTheme(AnsiTreeNodeValueTheme newValue) => this(valueTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result headerTheme(AnsiTreeHeaderTheme newValue) => this(headerTheme: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiTreeViewThemeCopyWithProxy get copyWith => _$AnsiTreeViewThemeCopyWithProxy(this);
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

class _$AnsiTreeAnchorThemeCopyWithProxy {
  _$AnsiTreeAnchorThemeCopyWithProxy(this._value);

  final AnsiTreeAnchorTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTreeAnchorTheme style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeAnchorTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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

class $AnsiTreeAnchorThemeCopyWithProxyChain<$Result> {
  $AnsiTreeAnchorThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeAnchorTheme _value;
  final $Result Function(AnsiTreeAnchorTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result style(AnsiBorderStyle newValue) => this(style: newValue);

  @pragma('vm:prefer-inline')
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiTreeAnchorThemeCopyWithProxy get copyWith => _$AnsiTreeAnchorThemeCopyWithProxy(this);
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

class _$AnsiTreeHeaderThemeCopyWithProxy {
  _$AnsiTreeHeaderThemeCopyWithProxy(this._value);

  final AnsiTreeHeaderTheme _value;

  @pragma('vm:prefer-inline')
  $AnsiBorderCopyWithProxyChain<AnsiTreeHeaderTheme> get border =>
      $AnsiBorderCopyWithProxyChain<AnsiTreeHeaderTheme>(_value.border, (AnsiBorder update) => this(border: update));

  @pragma('vm:prefer-inline')
  $AnsiTextThemeCopyWithProxyChain<AnsiTreeHeaderTheme> get textTheme =>
      $AnsiTextThemeCopyWithProxyChain<AnsiTreeHeaderTheme>(
          _value.textTheme, (AnsiTextTheme update) => this(textTheme: update));

  @pragma('vm:prefer-inline')
  AnsiTreeHeaderTheme showHash(bool newValue) => this(showHash: newValue);

  @pragma('vm:prefer-inline')
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

class $AnsiTreeHeaderThemeCopyWithProxyChain<$Result> {
  $AnsiTreeHeaderThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeHeaderTheme _value;
  final $Result Function(AnsiTreeHeaderTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result border(AnsiBorder newValue) => this(border: newValue);

  @pragma('vm:prefer-inline')
  $Result textTheme(AnsiTextTheme newValue) => this(textTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result showHash(bool newValue) => this(showHash: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiTreeHeaderThemeCopyWithProxy get copyWith => _$AnsiTreeHeaderThemeCopyWithProxy(this);
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

class _$AnsiTreeNodeThemeCopyWithProxy {
  _$AnsiTreeNodeThemeCopyWithProxy(this._value);

  final AnsiTreeNodeTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTreeNodeTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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

class $AnsiTreeNodeThemeCopyWithProxyChain<$Result> {
  $AnsiTreeNodeThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeNodeTheme _value;
  final $Result Function(AnsiTreeNodeTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiTreeNodeThemeCopyWithProxy get copyWith => _$AnsiTreeNodeThemeCopyWithProxy(this);
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

class _$AnsiTreeNodeKeyThemeCopyWithProxy {
  _$AnsiTreeNodeKeyThemeCopyWithProxy(this._value);

  final AnsiTreeNodeKeyTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTreeNodeKeyTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeKeyTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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

class $AnsiTreeNodeKeyThemeCopyWithProxyChain<$Result> {
  $AnsiTreeNodeKeyThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeNodeKeyTheme _value;
  final $Result Function(AnsiTreeNodeKeyTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
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
  _$AnsiTreeNodeKeyThemeCopyWithProxy get copyWith => _$AnsiTreeNodeKeyThemeCopyWithProxy(this);
}

class _$AnsiTreeNodeValueThemeImpl extends AnsiTreeNodeValueTheme {
  const _$AnsiTreeNodeValueThemeImpl({
    this.textStyle = const AnsiTextStyle(),
    this.color = AnsiColor.none,
    this.wrapText = false,
    this.wrapLength,
    this.alignment = AnsiTextAlignment.left,
  }) : super.ctor();

  @override
  final AnsiTextStyle textStyle;

  @override
  final AnsiColor color;

  @override
  final bool wrapText;

  @override
  final int? wrapLength;

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
            wrapLength == other.wrapLength &&
            alignment == other.alignment;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      textStyle,
      color,
      wrapText,
      wrapLength,
      alignment,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeNodeValueTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTreeNodeValueTheme@<$hexIdentity>{textStyle: $textStyle, color: $color, wrapText: $wrapText, wrapLength: $wrapLength, alignment: $alignment}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiTreeNodeValueTheme;
}

class _$AnsiTreeNodeValueThemeCopyWithProxy {
  _$AnsiTreeNodeValueThemeCopyWithProxy(this._value);

  final AnsiTreeNodeValueTheme _value;

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme wrapLength(int? newValue) => this(wrapLength: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeNodeValueTheme call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final Object? wrapLength = const Object(),
    final AnsiTextAlignment? alignment,
  }) {
    return _$AnsiTreeNodeValueThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
      wrapText: wrapText ?? _value.wrapText,
      wrapLength: identical(wrapLength, const Object()) ? _value.wrapLength : (wrapLength as int?),
      alignment: alignment ?? _value.alignment,
    );
  }
}

class $AnsiTreeNodeValueThemeCopyWithProxyChain<$Result> {
  $AnsiTreeNodeValueThemeCopyWithProxyChain(this._value, this._chain);

  final AnsiTreeNodeValueTheme _value;
  final $Result Function(AnsiTreeNodeValueTheme update) _chain;

  @pragma('vm:prefer-inline')
  $Result textStyle(AnsiTextStyle newValue) => this(textStyle: newValue);

  @pragma('vm:prefer-inline')
  $Result color(AnsiColor newValue) => this(color: newValue);

  @pragma('vm:prefer-inline')
  $Result wrapText(bool newValue) => this(wrapText: newValue);

  @pragma('vm:prefer-inline')
  $Result wrapLength(int? newValue) => this(wrapLength: newValue);

  @pragma('vm:prefer-inline')
  $Result alignment(AnsiTextAlignment newValue) => this(alignment: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final AnsiTextStyle? textStyle,
    final AnsiColor? color,
    final bool? wrapText,
    final Object? wrapLength = const Object(),
    final AnsiTextAlignment? alignment,
  }) {
    return _chain(_$AnsiTreeNodeValueThemeImpl(
      textStyle: textStyle ?? _value.textStyle,
      color: color ?? _value.color,
      wrapText: wrapText ?? _value.wrapText,
      wrapLength: identical(wrapLength, const Object()) ? _value.wrapLength : (wrapLength as int?),
      alignment: alignment ?? _value.alignment,
    ));
  }
}

extension $AnsiTreeNodeValueThemeExtension on AnsiTreeNodeValueTheme {
  _$AnsiTreeNodeValueThemeCopyWithProxy get copyWith => _$AnsiTreeNodeValueThemeCopyWithProxy(this);
}
