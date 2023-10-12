import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('printDataGrid', () {
    test('print formatted DataGrid fromColumns', () {
      testPrintDataGrid(
        data: gridData,
        type: AnsiGridType.fromColumns,
        allowPrint: true,
        expected: mockGridFromColumns,
      );
    });

    test("don't print DataGrid fromColumns", () {
      testPrintDataGrid(
        data: gridData,
        allowPrint: false,
        type: AnsiGridType.fromColumns,
        expected: '',
      );
    });

    test('print formatted DataGrid fromRows', () {
      testPrintDataGrid(
        data: gridData,
        type: AnsiGridType.fromRows,
        allowPrint: true,
        expected: mockGridFromRows,
      );
    });

    test("don't print DataGrid fromColumns", () {
      testPrintDataGrid(
        data: gridData,
        allowPrint: false,
        type: AnsiGridType.fromRows,
        expected: '',
      );
    });
  });
}
