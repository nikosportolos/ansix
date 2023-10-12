import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

import 'mocks.dart';
import 'utils.dart';

void main() {
  group('print', () {
    test('print styled text', () {
      testPrint(
        testMessage.bold(),
        allowPrint: true,
        expected: mockStyledText,
      );
    });

    test('print unformatted text', () {
      testPrint(
        testMessage.bold(),
        allowPrint: true,
        allowAnsi: false,
        expected: testMessage,
      );
    });
  });
}
