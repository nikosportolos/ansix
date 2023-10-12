import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('printJson', () {
    test('print formatted json', () {
      testPrintJson(
        allowPrint: true,
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
