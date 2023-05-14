import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  final StandardTextFormatter formatter = StandardTextFormatter();
  const String testMessage = 'This is a test message.';
  const AnsiColor foregroundColor = AnsiColor.deepSkyBlue4;
  const AnsiColor backgroundColor = AnsiColor.cyan3;

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

    test('withColorRgb', () {
      final String output = formatter.withColorRgb(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(output, testMessage);
    });
  });
}
