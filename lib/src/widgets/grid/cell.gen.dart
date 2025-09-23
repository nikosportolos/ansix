// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, inference_failure_on_uninitialized_variable, inference_failure_on_function_return_type, inference_failure_on_untyped_parameter, deprecated_member_use_from_same_package
// coverage:ignore-file

part of 'cell.dart';

class _$AnsiGridCellImpl extends AnsiGridCell {
  const _$AnsiGridCellImpl({
    this.position = AnsiGridCellPosition.$default,
    this.lines = const <AnsiText>[],
    this.type = AnsiGridCellType.cell,
    required this.width,
  }) : super.ctor();

  @override
  final AnsiGridCellPosition position;

  @override
  final List<AnsiText> lines;

  @override
  final AnsiGridCellType type;

  @override
  final int width;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AnsiGridCell &&
            runtimeType == other.runtimeType &&
            position == other.position &&
            deepEquality(lines, other.lines) &&
            type == other.type &&
            width == other.width;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      position,
      lines,
      type,
      width,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiGridCell{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiGridCell@<$hexIdentity>{position: $position, lines: $lines, type: $type, width: $width}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiGridCell;
}

abstract interface class _AnsiGridCellCopyWithProxy {
  $AnsiGridCellPositionCopyWithProxyChain<AnsiGridCell> get position;

  AnsiGridCell lines(List<AnsiText> newValue);

  AnsiGridCell type(AnsiGridCellType newValue);

  AnsiGridCell width(int newValue);

  AnsiGridCell call({
    final AnsiGridCellPosition? position,
    final List<AnsiText>? lines,
    final AnsiGridCellType? type,
    final int? width,
  });
}

class _AnsiGridCellCopyWithProxyImpl implements _AnsiGridCellCopyWithProxy {
  _AnsiGridCellCopyWithProxyImpl(this._value);

  final AnsiGridCell _value;

  @pragma('vm:prefer-inline')
  @override
  $AnsiGridCellPositionCopyWithProxyChain<AnsiGridCell> get position =>
      $AnsiGridCellPositionCopyWithProxyChain<AnsiGridCell>(
        _value.position,
        (AnsiGridCellPosition update) => this(position: update),
      );

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCell lines(List<AnsiText> newValue) => this(lines: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCell type(AnsiGridCellType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCell width(int newValue) => this(width: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCell call({
    final AnsiGridCellPosition? position,
    final List<AnsiText>? lines,
    final AnsiGridCellType? type,
    final int? width,
  }) {
    return _$AnsiGridCellImpl(
      position: position ?? _value.position,
      lines: lines ?? _value.lines,
      type: type ?? _value.type,
      width: width ?? _value.width,
    );
  }
}

sealed class $AnsiGridCellCopyWithProxyChain<$Result> {
  factory $AnsiGridCellCopyWithProxyChain(
    final AnsiGridCell value,
    final $Result Function(AnsiGridCell update) chain,
  ) = _AnsiGridCellCopyWithProxyChainImpl<$Result>;

  $Result position(AnsiGridCellPosition newValue);

  $Result lines(List<AnsiText> newValue);

  $Result type(AnsiGridCellType newValue);

  $Result width(int newValue);

  $Result call({
    final AnsiGridCellPosition? position,
    final List<AnsiText>? lines,
    final AnsiGridCellType? type,
    final int? width,
  });
}

class _AnsiGridCellCopyWithProxyChainImpl<$Result>
    implements $AnsiGridCellCopyWithProxyChain<$Result> {
  _AnsiGridCellCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiGridCell _value;
  final $Result Function(AnsiGridCell update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result position(AnsiGridCellPosition newValue) => this(position: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result lines(List<AnsiText> newValue) => this(lines: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result type(AnsiGridCellType newValue) => this(type: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result width(int newValue) => this(width: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final AnsiGridCellPosition? position,
    final List<AnsiText>? lines,
    final AnsiGridCellType? type,
    final int? width,
  }) {
    return _chain(
      _$AnsiGridCellImpl(
        position: position ?? _value.position,
        lines: lines ?? _value.lines,
        type: type ?? _value.type,
        width: width ?? _value.width,
      ),
    );
  }
}

extension $AnsiGridCellExtension on AnsiGridCell {
  _AnsiGridCellCopyWithProxy get copyWith =>
      _AnsiGridCellCopyWithProxyImpl(this);
}

class _$AnsiGridCellPositionImpl extends AnsiGridCellPosition {
  const _$AnsiGridCellPositionImpl({
    required this.column,
    required this.row,
  }) : super.ctor();

  @override
  final int column;

  @override
  final int row;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is AnsiGridCellPosition &&
            runtimeType == other.runtimeType &&
            column == other.column &&
            row == other.row;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      column,
      row,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiGridCellPosition{<optimized out>}';
    assert(() {
      toStringOutput =
          'AnsiGridCellPosition@<$hexIdentity>{column: $column, row: $row}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => AnsiGridCellPosition;
}

abstract interface class _AnsiGridCellPositionCopyWithProxy {
  AnsiGridCellPosition column(int newValue);

  AnsiGridCellPosition row(int newValue);

  AnsiGridCellPosition call({
    final int? column,
    final int? row,
  });
}

class _AnsiGridCellPositionCopyWithProxyImpl
    implements _AnsiGridCellPositionCopyWithProxy {
  _AnsiGridCellPositionCopyWithProxyImpl(this._value);

  final AnsiGridCellPosition _value;

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCellPosition column(int newValue) => this(column: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCellPosition row(int newValue) => this(row: newValue);

  @pragma('vm:prefer-inline')
  @override
  AnsiGridCellPosition call({
    final int? column,
    final int? row,
  }) {
    return _$AnsiGridCellPositionImpl(
      column: column ?? _value.column,
      row: row ?? _value.row,
    );
  }
}

sealed class $AnsiGridCellPositionCopyWithProxyChain<$Result> {
  factory $AnsiGridCellPositionCopyWithProxyChain(
    final AnsiGridCellPosition value,
    final $Result Function(AnsiGridCellPosition update) chain,
  ) = _AnsiGridCellPositionCopyWithProxyChainImpl<$Result>;

  $Result column(int newValue);

  $Result row(int newValue);

  $Result call({
    final int? column,
    final int? row,
  });
}

class _AnsiGridCellPositionCopyWithProxyChainImpl<$Result>
    implements $AnsiGridCellPositionCopyWithProxyChain<$Result> {
  _AnsiGridCellPositionCopyWithProxyChainImpl(this._value, this._chain);

  final AnsiGridCellPosition _value;
  final $Result Function(AnsiGridCellPosition update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result column(int newValue) => this(column: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result row(int newValue) => this(row: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result call({
    final int? column,
    final int? row,
  }) {
    return _chain(
      _$AnsiGridCellPositionImpl(
        column: column ?? _value.column,
        row: row ?? _value.row,
      ),
    );
  }
}

extension $AnsiGridCellPositionExtension on AnsiGridCellPosition {
  _AnsiGridCellPositionCopyWithProxy get copyWith =>
      _AnsiGridCellPositionCopyWithProxyImpl(this);
}
