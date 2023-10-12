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

    test('print unformatted text', () {
      testPrintStyledText(
        allowPrint: true,
        allowAnsi: false,
        expected: mockText,
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
