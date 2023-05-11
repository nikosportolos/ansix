import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/column.dart';
import 'package:ansix/src/widgets/table/row.dart';

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

  factory AnsiTable.fromMap(
    final Map<String, List<Object?>> data, {
    final int? fixedWidth,
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  }) {
    final List<AnsiTableColumn> columns = <AnsiTableColumn>[];
    final List<AnsiTableRow> rows = <AnsiTableRow>[];

    for (final MapEntry<String, List<Object?>> column in data.entries) {
      columns.add(
        AnsiTableColumn(
          data: <Object?>[column.key, ...column.value],
          fixedWidth: fixedWidth,
          defaultAlignment: defaultAlignment,
        ),
      );
    }

    bool hasMoreRows = true;
    int i = 0;

    while (hasMoreRows) {
      if (columns.length >= i) {
        // rows.addAll(columns[i].rows[i].);
      }

      i++;
      hasMoreRows = false;
    }

    return AnsiTable(
      border: border,
    );
  }

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

  @override
  String toString() {
    return formattedText;
  }
}
