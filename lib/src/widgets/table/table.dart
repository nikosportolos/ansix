import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/builder.dart';
import 'package:ansix/src/widgets/table/column.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:meta/meta.dart';

/// **AnsiTable**
///
/// An ANSI table is a 2D table of data that is formatted with ANSI escape sequences to display borders
/// and optionally add colors or styles in certain cells or text.
///
/// The borders are drawn using ASCII or Unicode characters that simulate table lines and corners,
/// and the cells can be colored or styled with different foreground and background colors
/// to improve readability and visual appeal.
///
/// These tables are commonly used in command-line interfaces, log files, and other text-based applications
/// to present data in a tabular format that is easy to read and analyze.
class AnsiTable {
  AnsiTable({
    final List<AnsiTableRow> rows = const <AnsiTableRow>[],
    final AnsiBorder border = const AnsiBorder(),
  }) : builder = const AnsiBorderBuilder() {
    formattedText = (StringBuffer()
          ..writeAll(
            <String>[
              builder.print(
                border: border.type.hasHeader ? border.copyWith.type(AnsiBorderType.all) : border,
                data: rows[0].data,
                index: 0,
                total: border.type.hasHeader ? 1 : rows.length,
              ),
              if (rows.length > 1) ...<String>[
                if (border.type.hasHeader) AnsiEscapeCodes.newLine,
                for (int i = 1; i < rows.length - 1; i++)
                  builder
                      .print(
                        border: border,
                        data: rows[i].data,
                        index: i,
                        total: border.type.hasFooter ? rows.length - 1 : rows.length,
                      )
                      .toString(),
                if (border.type.hasFooter) AnsiEscapeCodes.newLine,
                builder.print(
                  border: border.type.hasFooter ? border.copyWith.type(AnsiBorderType.all) : border,
                  data: rows[rows.length - 1].data,
                  index: border.type.hasFooter ? 0 : rows.length - 1,
                  total: border.type.hasFooter ? 1 : rows.length,
                ),
              ],
            ],
          ))
        .toString();
  }

  late final String formattedText;
  final AnsiBorderBuilder builder;

  /// **AnsiTable.fromList**
  ///
  /// Returns an [AnsiTable] build from the input list of data.
  /// Arguments:
  /// - [data] Will use the input list of data to build an [AnsiTableColumn].
  /// - [fixedWidth] If set will use this value as default width for all table cells.
  /// - [border] The [AnsiBorder] that will be used to draw the table with.
  /// - [defaultAlignment] The default [AnsiTextAlignment] that will be used for all table cells.
  factory AnsiTable.fromList(
    final List<Object?> data, {
    final int? fixedWidth,
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  }) {
    return AnsiTable(
      border: border,
      rows: AnsiTableColumn(
        data: data,
        fixedWidth: fixedWidth,
        defaultAlignment: defaultAlignment,
      ).rows,
    );
  }

  /// **AnsiTable.fromMap**
  ///
  /// Returns an [AnsiTable] build from the input map of data.
  /// Arguments:
  /// - [data] Will use the keys of the map as headers and their values as data.
  /// - [fixedWidth] If set will use this value as default width for all table cells.
  /// - [keepSameWidth] If set to true will find the max cell width and use it for the whole table.
  /// - [border] The [AnsiBorder] that will be used to draw the table with.
  /// - [defaultAlignment] The default [AnsiTextAlignment] that will be used for all table cells.
  /// - [orientation] The [AnsiOrientation] that will be used to draw the table.
  factory AnsiTable.fromMap(
    final Map<Object, List<Object?>> data, {
    final int? fixedWidth,
    final bool keepSameWidth = false,
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
    final AnsiOrientation orientation = AnsiOrientation.vertical,
  }) {
    int maxRows = 0;
    int maxColumnLength = 0;

    for (final MapEntry<Object, List<Object?>> column in data.entries) {
      maxRows = max(maxRows, column.value.length + 1);
      maxColumnLength = max(
        maxColumnLength,
        max(
          column.key is AnsiText ? (column.key as AnsiText).width : column.key.toString().unformattedLength,
          column.value.fold<int>(0, (int max, Object? e) {
            if (e is AnsiText) {
              return e.width > max ? e.width : max;
            }
            final int length = e.toString().unformattedLength;
            return length > max ? length : max;
          }),
        ),
      );
    }

    final List<AnsiTableColumn> columns = <AnsiTableColumn>[
      for (final MapEntry<Object, List<Object?>> column in data.entries)
        AnsiTableColumn(
          data: <Object?>[column.key, ...column.value],
          defaultAlignment: defaultAlignment,
          fixedWidth: fixedWidth ??
              (keepSameWidth
                  ? maxColumnLength
                  : orientation == AnsiOrientation.horizontal
                      ? maxColumnLength
                      : 0),
        )
    ];

    return AnsiTable(
      border: border,
      rows: getRows(columns, maxRows, orientation),
    );
  }

  @visibleForTesting
  static List<AnsiTableRow> getRows(
    final List<AnsiTableColumn> columns,
    final int maxRows,
    final AnsiOrientation orientation,
  ) {
    final List<AnsiTableRow> rows = <AnsiTableRow>[];
    if (orientation == AnsiOrientation.vertical) {
      for (int j = 0; j < maxRows; j++) {
        final List<AnsiText> rowData = <AnsiText>[];
        for (int i = 0; i < columns.length; i++) {
          if (columns[i].rows.length > j) {
            rowData.add(columns[i].rows[j].data[0]);
          } else {
            rowData.add(AnsiText('', fixedWidth: columns[i].width));
          }
        }
        rows.add(AnsiTableRow(data: rowData));
      }

      return rows;
    }

    for (int i = 0; i < columns.length; i++) {
      final List<AnsiText> rowData = <AnsiText>[];
      for (int j = 0; j < maxRows; j++) {
        if (columns[i].rows.length > j) {
          rowData.add(columns[i].rows[j].data[0]);
        } else {
          rowData.add(AnsiText('', fixedWidth: columns[i].width));
        }
      }
      rows.add(AnsiTableRow(data: rowData));
    }

    return rows;
  }

  @override
  String toString() {
    return formattedText;
  }
}
