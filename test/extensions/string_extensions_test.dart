import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  group('addStyle', () {
    for (final AnsiStyle style in AnsiStyle.values) {
      test(style.name, () {
        final String text = 'This is a test message with [${style.name}] style';
        final String value = text.addStyle(style);
        // ignore: avoid_print
        print(value);
        expect(value, '${style.startEscapeCode}$text${style.endEscapeCode}');
      });
    }
  });
}
