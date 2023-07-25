import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/core/extensions/list_extensions.dart';
import 'package:ansix/src/widgets/grid/border_set.dart';
import 'package:ansix/src/widgets/grid/cell.dart';
import 'package:ansix/src/widgets/grid/column.dart';

export 'theme.dart';

/// **AnsiGrid**
///
/// An ANSI Grid is a 2D table of data that is formatted with ANSI escape sequences to display borders
/// and optionally add colors or styles in certain cells or text.
///
/// The borders are drawn using ASCII or Unicode characters that simulate table lines and corners,
/// and the cells can be colored or styled with different foreground and background colors
/// to improve readability and visual appeal.
///
/// Grids are commonly used in command-line interfaces, log files, and other text-based applications
/// to present data in a tabular format that is easy to read and analyze.
///
/// > **Each cell of an [AnsiGrid] can have multiple lines.**
///
/// - [data]
///
///   A list of columns that will be used as data of the [AnsiGrid].
///
/// - [theme]
///
///   The [AnsiGridTheme] that will be used to draw the [AnsiGrid].
class AnsiGrid extends AnsiWidget {
  AnsiGrid._(
    final List<List<Object?>> data, {
    this.theme = const AnsiGridTheme(),
  })  : columnCount = data.length,
        rowCount = data.objectCount {
    final int totalGridRows = theme.orientation.isVertical ? rowCount : columnCount;

    columns = <AnsiGridColumn>[
      for (int i = 0; i < data.length; i++) //
        AnsiGridColumn(
          columnIndex: i,
          data: data[i],
          theme: theme,
          totalGridRows: totalGridRows,
        ),
    ];

    _generateGrid();
    formattedText = _buffer.toString();
  }

  final StringBuffer _buffer = StringBuffer();

  late final List<AnsiGridColumn> columns;

  final AnsiGridTheme theme;
  final int rowCount;
  final int columnCount;

  @override
  late final String formattedText;

  /// Build an [AnsiGrid] with a single row of data.
  factory AnsiGrid.single(
    final List<Object?> data, {
    final AnsiGridTheme theme = const AnsiGridTheme(),
  }) {
    return AnsiGrid.fromColumns(
      <List<Object?>>[data],
      theme: theme,
    );
  }

  factory AnsiGrid.fromRows(
    final List<List<Object?>> rows, {
    final AnsiGridTheme theme = const AnsiGridTheme(),
  }) {
    return AnsiGrid._(
      theme.orientation.isVertical ? rows.transpose() : rows,
      theme: theme,
    );
  }

  factory AnsiGrid.fromColumns(
    final List<List<Object?>> columns, {
    final AnsiGridTheme theme = const AnsiGridTheme(),
  }) {
    return AnsiGrid._(
      theme.orientation.isVertical ? columns : columns.transpose(),
      theme: theme,
    );
  }

  String _getBorder(final AnsiBorderSet set, final int maxColumnWidth) {
    final StringBuffer buffer = StringBuffer()
      ..writeAll(
        <String>[
          if (!theme.transparent) AnsiEscapeCodes.reset,
          set.start,
          for (int i = 0; i < columnCount; i++) ...<String>[
            set.line *
                (columns[i].width +
                    _calculateColumnWidthDiff(
                      columnWidth: columns[i].width,
                      maxColumnWidth: maxColumnWidth,
                      textWidth: columns[i].width,
                    )),
            if (i != columnCount - 1) set.separator,
          ],
          set.end
        ],
      );

    return buffer.toString().withForegroundColor(theme.border.color);
  }

  void _generateGrid() {
    final AnsiGridBorderSet builder = AnsiGridBorderSet.fromBorder(theme.border);

    final int maxColumnWidth = columns.fold(0, (int m, AnsiGridColumn column) => max(m, column.width));
    final Iterable<AnsiGridCell> allCells = columns.expand((AnsiGridColumn column) => column.cells);

    for (int row = 0; row < rowCount; row++) {
      _generateRow(
        row: row,
        allCells: allCells,
        builder: builder,
        maxColumnWidth: maxColumnWidth,
      );
    }
  }

  void _generateRow({
    required final int row,
    required final Iterable<AnsiGridCell> allCells,
    required final AnsiGridBorderSet builder,
    required final int maxColumnWidth,
  }) {
    final int maxRowLines = allCells
        .where((AnsiGridCell cell) => cell.position.row == row)
        .fold(0, (int m, AnsiGridCell cell) => max(m, cell.lineCount));

    final bool isFirstRow = row == 0;
    final bool isLastRow = row == rowCount - 1;

    for (int line = 0; line < maxRowLines; line++) {
      if (isFirstRow && line == 0 && !builder.topBorder.isEmpty) {
        _buffer
          ..write(_getBorder(builder.topBorder, maxColumnWidth))
          ..writeln();
      }

      if (!theme.transparent) {
        _buffer.write(AnsiEscapeCodes.reset);
      }

      for (int col = 0; col < columnCount; col++) {
        _generateColumnContent(
          col: col,
          row: row,
          line: line,
          allCells: allCells,
          builder: builder,
          maxColumnWidth: maxColumnWidth,
        );
      }

      _buffer.writeWithForegroundColor(builder.textLine.end, theme.border.color);

      if (maxRowLines > 1 && line != maxRowLines - 1) {
        _buffer.writeln();
      }
    }

    if (!isLastRow || !builder.bottomBorder.isEmpty) {
      _buffer.writeln();
      _buffer.write(_getBorder(
        isLastRow ? builder.bottomBorder : builder.middleBorder,
        maxColumnWidth,
      ));
    }

    if (!builder.middleBorder.isEmpty && row < rowCount - 1) {
      _buffer.writeln();
    }
  }

  void _generateColumnContent({
    required final int col,
    required final int row,
    required final int line,
    required final Iterable<AnsiGridCell> allCells,
    required final AnsiGridBorderSet builder,
    required final int maxColumnWidth,
  }) {
    final AnsiGridColumn column = columns[col];
    final AnsiColor backgroundColor = allCells
            .where((AnsiGridCell cell) => theme.orientation.isVertical
                ? cell.position.row == row && cell.lines.isNotEmpty
                : cell.position.column == col && cell.lines.isNotEmpty)
            .firstOrNull
            ?.lines[0]
            .backgroundColor ??
        AnsiColor.none;

    if (col == 0) {
      _buffer.writeWithForegroundColor(
        builder.textLine.start,
        theme.border.color,
      );
    }

    if (column.cells.length - 1 >= row && column.cells[row].lineCount - 1 >= line) {
      final AnsiText ansiText = column.cells[row].lines[line];
      final int widthDiff = _calculateColumnWidthDiff(
        columnWidth: column.width,
        maxColumnWidth: maxColumnWidth,
        textWidth: ansiText.width,
      );

      if (widthDiff == 0) {
        _buffer.write(ansiText);
        if (col < columnCount - 1) {
          _buffer.writeWithForegroundColor(
            builder.textLine.separator,
            theme.border.color,
          );
        }
        return;
      }

      switch (ansiText.alignment) {
        case AnsiTextAlignment.left:
          _buffer.write(ansiText);
          _buffer.writeSpaces(widthDiff, backgroundColor);
          break;

        case AnsiTextAlignment.center:
          final (int, int) paddings = ansiText.text.alignCenterForWidth(
              theme.fixedCellWidth != null && column.width < theme.fixedCellWidth!
                  ? theme.fixedCellWidth!
                  : column.width);
          _buffer.writeSpaces(paddings.$1 - ansiText.padding.left, backgroundColor);
          _buffer.write(ansiText.formattedText);
          _buffer.writeSpaces(paddings.$2 - ansiText.padding.right, backgroundColor);
          break;

        case AnsiTextAlignment.right:
          _buffer.writeSpaces(widthDiff, backgroundColor);
          _buffer.write(ansiText);
          break;
      }
    } else {
      _buffer.writeSpaces(
        _calculateSpacesForColumn(column, maxColumnWidth),
        backgroundColor,
      );
    }

    if (col < columnCount - 1) {
      _buffer.writeWithForegroundColor(
        builder.textLine.separator,
        theme.border.color,
      );
    }
  }

  int _calculateColumnWidthDiff({
    required final int columnWidth,
    required final int maxColumnWidth,
    required final int textWidth,
  }) {
    if (theme.fixedCellWidth != null && columnWidth < theme.fixedCellWidth!) {
      if (theme.keepSameWidth) {
        return (maxColumnWidth > theme.fixedCellWidth! ? maxColumnWidth : theme.fixedCellWidth!) - textWidth;
      }

      return theme.fixedCellWidth! - textWidth;
    }

    return (theme.keepSameWidth ? maxColumnWidth : columnWidth) - textWidth;
  }

  int _calculateSpacesForColumn(final AnsiGridColumn column, final int maxColumnWidth) {
    if (theme.fixedCellWidth != null && column.width < theme.fixedCellWidth!) {
      return theme.keepSameWidth && maxColumnWidth > theme.fixedCellWidth! ? maxColumnWidth : theme.fixedCellWidth!;
    }

    return theme.keepSameWidth ? maxColumnWidth : column.width;
  }
}
