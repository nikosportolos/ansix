import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  final StandardTextFormatter formatter = StandardTextFormatter();

  group('StandardTextFormatter', () {
    test('withStyle', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        final String output = formatter.withStyle(testMessage, style);
        expect(output, testMessage);
      }
    });

    test('withColor', () {
      final String output = formatter.withColor(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(output, testMessage);
    });
  });
}
