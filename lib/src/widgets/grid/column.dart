import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/core/extensions/list_extensions.dart';
import 'package:ansix/src/widgets/grid/cell.dart';

/// **AnsiGridColumn**
///
/// Represents a column of an [AnsiGrid].
///
/// - [data] The list of data of the column.
/// - [columnIndex] The order index of the column.
/// - [totalGridRows] The total number of rows of the parent [AnsiGrid].
/// - [theme] The [AnsiGridTheme] that will be used to draw the column.
class AnsiGridColumn {
  AnsiGridColumn({
    required final List<Object?> data,
    required final int columnIndex,
    required final int totalGridRows,
    final AnsiGridTheme theme = AnsiGridTheme.$default,
  }) {
    cells = <AnsiGridCell>[
      for (int row = 0; row < data.length; row++)
        _parse(
          object: data[row],
          theme: theme,
          position: AnsiGridCellPosition(column: columnIndex, row: row),
          type: theme.orientation.isVertical //
              ? _getType(row, totalGridRows)
              : _getType(columnIndex, totalGridRows),
        )
    ];

    rowCount = data.length;
    lineCount =
        cells.fold<int>(0, (int m, AnsiGridCell cell) => m + cell.lineCount);
    width =
        cells.fold<int>(0, (int m, AnsiGridCell cell) => max(m, cell.width));
  }

  /// The list of [AnsiGridCell] of the column.
  late final List<AnsiGridCell> cells;

  /// The total rows of the column.
  late final int rowCount;

  /// The total lines of the column.
  late final int lineCount;

  /// The width of the column.
  late final int width;

  AnsiGridCellType _getType(final int index, final int totalGridRows) {
    if (index == 0) return AnsiGridCellType.header;
    if (index == totalGridRows - 1) return AnsiGridCellType.footer;
    return AnsiGridCellType.cell;
  }

  AnsiGridCell _parse({
    required final Object? object,
    required final AnsiGridCellPosition position,
    required final AnsiGridTheme theme,
    required final AnsiGridCellType type,
  }) {
    if (object == null || object.toString().isEmpty) {
      return AnsiGridCell(
        position: position,
        lines: <AnsiText>[AnsiText('')],
        width: 0,
        type: type,
      );
    }

    if (object is AnsiText) {
      return _parseAnsiText(
        ansiText: object,
        position: position,
        theme: theme,
        type: type,
      );
    }

    AnsiTextTheme textTheme = type.getTextTheme(theme);
    final AnsiPadding padding = textTheme.padding;
    textTheme = textTheme.copyWith.padding(AnsiPadding.only(
      left: textTheme.padding.left,
      right: textTheme.padding.right,
    ));

    final AnsiText emptyAnsiText = AnsiText.withTheme('', textTheme);

    String text =
        theme.overrideTheme ? object.toString() : object.toString().unformatted;
    if (theme.wrapText) {
      final int? wrapLength =
          theme.wrapOptions.lineLength ?? textTheme.fixedWidth;
      if (wrapLength != null && wrapLength < text.length) {
        text = text //
            .wrapText(wrapOptions: theme.wrapOptions, fixedWidth: wrapLength)
            .map((String s) => s.trim())
            .join(AnsiEscapeCodes.newLine);
      }
    }
    final List<String> lines = text.split(AnsiEscapeCodes.newLine);

    if (lines.hasOne) {
      final AnsiText ansiText = AnsiText.withTheme(text, textTheme);
      return AnsiGridCell(
        position: position,
        type: type,
        lines: <AnsiText>[
          for (int i = 0; i < padding.top; i++) emptyAnsiText,
          ansiText,
          for (int i = 0; i < padding.bottom; i++) emptyAnsiText,
        ],
        width: ansiText.width,
      );
    }

    final List<AnsiText> data = lines.map((String t) {
      return AnsiText.withTheme(t, textTheme);
    }).toList(growable: false);

    return AnsiGridCell(
      position: position,
      type: type,
      lines: <AnsiText>[
        for (int i = 0; i < padding.top; i++) emptyAnsiText,
        ...data,
        for (int i = 0; i < padding.bottom; i++) emptyAnsiText,
      ],
      width: data.fold<int>(0, (int m, AnsiText t) => max(m, t.width)),
    );
  }

  AnsiGridCell _parseAnsiText({
    required AnsiText ansiText,
    required final AnsiGridCellPosition position,
    required final AnsiGridTheme theme,
    required final AnsiGridCellType type,
  }) {
    AnsiTextTheme textTheme =
        theme.overrideTheme ? ansiText.theme : type.getTextTheme(theme);
    final AnsiPadding padding = textTheme.padding;
    textTheme = textTheme.copyWith.padding(AnsiPadding.only(
      left: textTheme.padding.left,
      right: textTheme.padding.right,
    ));
    final AnsiText emptyAnsiText = AnsiText.withTheme('', textTheme);

    if (theme.wrapText) {
      ansiText = AnsiText.withTheme(
          ansiText.text
              .wrapText(
                wrapOptions: theme.wrapOptions,
                fixedWidth:
                    theme.wrapOptions.lineLength ?? textTheme.fixedWidth,
              )
              .map((String s) => s.trim())
              .join(AnsiEscapeCodes.newLine),
          textTheme);
    }

    if (!ansiText.isMultiline) {
      return AnsiGridCell(
        type: type,
        position: position,
        width: ansiText.width,
        lines: <AnsiText>[
          for (int i = 0; i < padding.top; i++) emptyAnsiText,
          theme.overrideTheme
              ? ansiText
              : AnsiText.withTheme(ansiText.text, textTheme),
          for (int i = 0; i < padding.bottom; i++) emptyAnsiText,
        ],
      );
    }

    final List<AnsiText> lines = <AnsiText>[
      for (int i = 0; i < padding.top; i++) emptyAnsiText,
      ...ansiText.text.trim().split(AnsiEscapeCodes.newLine).map((String t) {
        return AnsiText.withTheme(t, textTheme);
      }).toList(growable: false),
      for (int i = 0; i < padding.bottom; i++) emptyAnsiText,
    ];

    return AnsiGridCell(
      type: type,
      lines: lines,
      position: position,
      width: lines.fold<int>(0, (int m, AnsiText s) => max(m, s.width)),
    );
  }
}

extension on AnsiGridCellType {
  AnsiTextTheme getTextTheme(final AnsiGridTheme theme) {
    return switch (this) {
      AnsiGridCellType.header => theme.headerTextTheme ?? theme.cellTextTheme,
      AnsiGridCellType.cell => theme.cellTextTheme,
      AnsiGridCellType.footer => theme.footerTextTheme ?? theme.cellTextTheme
    };
  }
}
