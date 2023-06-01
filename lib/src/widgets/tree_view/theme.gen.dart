// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'theme.dart';

class _$AnsiTreeViewThemeImpl extends AnsiTreeViewTheme {
  const _$AnsiTreeViewThemeImpl({
    this.compact = true,
    this.sorted = false,
    this.showListItemIndex = false,
    this.anchorTheme = const AnsiTreeAnchorTheme(),
    this.keyTheme = const AnsiTreeNodeTheme(textStyle: AnsiTextStyle(bold: true)),
    this.valueTheme = const AnsiTreeNodeTheme(),
    this.classTheme = const AnsiTreeClassTheme(),
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
  final AnsiTreeNodeTheme keyTheme;

  @override
  final AnsiTreeNodeTheme valueTheme;

  @override
  final AnsiTreeClassTheme classTheme;

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
            classTheme == other.classTheme;
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
      classTheme,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiTreeViewTheme{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiTreeViewTheme@<$hexIdentity>{compact: $compact, sorted: $sorted, showListItemIndex: $showListItemIndex, anchorTheme: $anchorTheme, keyTheme: $keyTheme, valueTheme: $valueTheme, classTheme: $classTheme}';
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
  AnsiTreeViewTheme anchorTheme(AnsiTreeAnchorTheme newValue) => this(anchorTheme: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme keyTheme(AnsiTreeNodeTheme newValue) => this(keyTheme: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme valueTheme(AnsiTreeNodeTheme newValue) => this(valueTheme: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme classTheme(AnsiTreeClassTheme newValue) => this(classTheme: newValue);

  @pragma('vm:prefer-inline')
  AnsiTreeViewTheme call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeTheme? keyTheme,
    final AnsiTreeNodeTheme? valueTheme,
    final AnsiTreeClassTheme? classTheme,
  }) {
    return _$AnsiTreeViewThemeImpl(
      compact: compact ?? _value.compact,
      sorted: sorted ?? _value.sorted,
      showListItemIndex: showListItemIndex ?? _value.showListItemIndex,
      anchorTheme: anchorTheme ?? _value.anchorTheme,
      keyTheme: keyTheme ?? _value.keyTheme,
      valueTheme: valueTheme ?? _value.valueTheme,
      classTheme: classTheme ?? _value.classTheme,
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
  $Result keyTheme(AnsiTreeNodeTheme newValue) => this(keyTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result valueTheme(AnsiTreeNodeTheme newValue) => this(valueTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result classTheme(AnsiTreeClassTheme newValue) => this(classTheme: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final bool? compact,
    final bool? sorted,
    final bool? showListItemIndex,
    final AnsiTreeAnchorTheme? anchorTheme,
    final AnsiTreeNodeTheme? keyTheme,
    final AnsiTreeNodeTheme? valueTheme,
    final AnsiTreeClassTheme? classTheme,
  }) {
    return _chain(_$AnsiTreeViewThemeImpl(
      compact: compact ?? _value.compact,
      sorted: sorted ?? _value.sorted,
      showListItemIndex: showListItemIndex ?? _value.showListItemIndex,
      anchorTheme: anchorTheme ?? _value.anchorTheme,
      keyTheme: keyTheme ?? _value.keyTheme,
      valueTheme: valueTheme ?? _value.valueTheme,
      classTheme: classTheme ?? _value.classTheme,
    ));
  }
}

extension $AnsiTreeViewThemeExtension on AnsiTreeViewTheme {
  _$AnsiTreeViewThemeCopyWithProxy get copyWith => _$AnsiTreeViewThemeCopyWithProxy(this);
}
