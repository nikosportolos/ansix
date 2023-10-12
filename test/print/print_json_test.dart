import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('printJson', () {
    test('print formatted json', () {
      testPrintJson(
        allowPrint: true,
        expected: mockFormattedJson,
      );
    });

    test('print unformatted json', () {
      testPrintJson(
        allowPrint: true,
        allowAnsi: false,
        expected: mockJson,
      );
    });

    test("don't print json", () {
      testPrintJson(
        allowPrint: false,
        expected: '',
      );
    });
  });
}
