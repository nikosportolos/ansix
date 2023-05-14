import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/orientation.dart';
import 'package:ansix/src/widgets/table/column.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:meta/meta.dart';

class AnsiTable {
  AnsiTable({
    this.border = const AnsiBorder(),
    this.data = const <AnsiTableRow>[],
  }) : formattedText = (StringBuffer()
              ..writeAll(
                <String>[
                  for (int i = 0; i < data.length; i++)
                    data[i].print(
                      border: border,
                      isFirstLine: i == 0,
                      isLastLine: i == data.length - 1,
                    )
                ],
              ))
            .toString();

  final AnsiBorder border;
  final List<AnsiTableRow> data;
  final String formattedText;

  factory AnsiTable.fromList(
    final List<Object?> data, {
    final int? fixedWidth,
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  }) {
    return AnsiTable(
      border: border,
      data: AnsiTableColumn(
        data: data,
        fixedWidth: fixedWidth,
        defaultAlignment: defaultAlignment,
      ).rows,
    );
  }

  factory AnsiTable.fromMap(
    final Map<String, List<Object?>> data, {
    final int? fixedWidth,
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
    final AnsiOrientation orientation = AnsiOrientation.vertical,
  }) {
    int maxRows = 0;
    int maxColumnLength = 0;

    for (final MapEntry<String, List<Object?>> column in data.entries) {
      maxRows = max(maxRows, column.value.length + 1);
      maxColumnLength = max(
        maxColumnLength,
        max(
          column.key.length,
          column.value.fold<int>(0, (int max, Object? e) {
            if (e is AnsiText) {
              return e.width > max ? e.width : max;
            }
            return e.toString().length > max ? e.toString().length : max;
          }),
        ),
      );
    }

    final List<AnsiTableColumn> columns = <AnsiTableColumn>[
      for (final MapEntry<String, List<Object?>> column in data.entries)
        AnsiTableColumn(
          data: <Object?>[column.key, ...column.value],
          fixedWidth: fixedWidth ?? maxColumnLength,
          defaultAlignment: defaultAlignment,
        )
    ];

    return AnsiTable(
      border: border,
      data: getRows(columns, maxRows, orientation),
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
