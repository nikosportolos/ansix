// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  group('', () {
    test('', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        final String text = 'This is a test message with [${style.name}] style';
        final String value = text.addStyle(style);
        print(value);
        expect(value, '${style.startEscapeCode}$text${style.endEscapeCode}');
      }
    });
  });
}
