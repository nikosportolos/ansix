import 'package:ansix/ansix.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'cell.gen.dart';

/// **AnsiGridCellType**
///
/// Describes the type of each cell *(header, cell or footer)*.
enum AnsiGridCellType { header, cell, footer }

/// **AnsiGridCell**
///
/// Represents a cell of the [AnsiGrid].
///
/// Each cell of an [AnsiGrid] can have multiple lines of text.
@DataClass()
abstract class AnsiGridCell {
  const AnsiGridCell.ctor();

  /// Default constructor
  const factory AnsiGridCell({
    AnsiGridCellPosition position,
    List<AnsiText> lines,
    AnsiGridCellType type,
    required int width,
  }) = _$AnsiGridCellImpl;

  /// Used to describe the position of a [AnsiGridCell] within an [AnsiGrid].
  @DefaultValue(AnsiGridCellPosition.$default)
  AnsiGridCellPosition get position;

  /// The cell's text lines.
  @DefaultValue(<AnsiText>[])
  List<AnsiText> get lines;

  /// Describes the type of each cell *(header, cell or footer)*.
  @DefaultValue(AnsiGridCellType.cell)
  AnsiGridCellType get type;

  /// The width of the cell.
  int get width;

  /// The total lines of the cell.
  int get lineCount => lines.length;

  /// True if cell has more than one lines.
  bool get isMultiline => lineCount > 1;
}

/// **AnsiGridCellPosition**
///
/// Used to describe the position of a [AnsiGridCell]
/// within an [AnsiGrid].
@DataClass()
abstract class AnsiGridCellPosition {
  const AnsiGridCellPosition.ctor();

  /// Default constructor
  const factory AnsiGridCellPosition({
    required int column,
    required int row,
  }) = _$AnsiGridCellPositionImpl;

  int get column;

  int get row;

  static const AnsiGridCellPosition $default = AnsiGridCellPosition(column: 0, row: 0);
}
