import 'package:ansix/src/widgets/table/cell.dart';

/// **AnsiTableRow**
///
/// Represents a row of the table.
class AnsiTableRow {
  AnsiTableRow({
    this.data = const <AnsiTableCell>[],
  });

  final List<AnsiTableCell> data;
}
