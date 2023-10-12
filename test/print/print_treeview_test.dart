import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('printTreeView', () {
    test('print formatted TreeView', () {
      testPrintTreeView(
        allowPrint: true,
        expected: mockTreeView,
      );
    });

    test('print unformatted TreeView', () {
      testPrintTreeView(
        allowPrint: true,
        allowAnsi: false,
        expected: mockUnformattedTreeView,
      );
    });

    test("don't print TreeView", () {
      testPrintTreeView(
        allowPrint: false,
        expected: '',
      );
    });
  });
}
