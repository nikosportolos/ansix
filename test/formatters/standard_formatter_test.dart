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
    test('addStyle', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        final String output = formatter.addStyle(testMessage, style);
        expect(output, testMessage);
      }
    });

    test('addColor', () {
      final String output = formatter.addColor(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(output, testMessage);
    });

    test('addColorRgb', () {
      final String output = formatter.addColorRgb(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(output, testMessage);
    });
  });
}
