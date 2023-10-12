import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('printStyled', () {
    test('print styled text', () {
      testPrintStyledText(
        allowPrint: true,
        expected: mockStyledText,
      );
    });

    test("don't print styled text", () {
      testPrintStyledText(
        allowPrint: false,
        expected: '',
      );
    });
  });
}
