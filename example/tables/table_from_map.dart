import 'package:ansix/src/widgets/table/row.dart';
import 'package:ansix/src/widgets/table/table.dart';

void main() {
  final AnsiTable table = AnsiTable.fromMap({
    'Column 1': [1, 2, 3, 4, 5],
    'Column 2': ['test1', 'test1', 'test1', 'test1', 'test1'],
  });

  final AnsiTable ansiTable = AnsiTable(
    data: [
      AnsiTableRow(
        data: [],
      ),
    ],
  );

  print(table);
}
