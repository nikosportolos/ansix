import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  final AnsiTextFormatter formatter = AnsiTextFormatter();
  const String testMessage = 'This is a test message.';
  const AnsiColor foregroundColor = AnsiColor.deepSkyBlue4;
  const AnsiColor backgroundColor = AnsiColor.cyan3;

  group('AnsiTextFormatter', () {
    test('addStyle', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        final String output = formatter.addStyle(testMessage, style);
        expect(
          output,
          '${style.startEscapeCode}$testMessage${style.endEscapeCode}',
        );
      }
    });

    test('addColor', () {
      final String output = formatter.addColor(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(
        output,
        '\x1B[38;5;25m\x1B[48;5;43m$testMessage\x1B[0m',
      );
    });

    test('addColorRgb', () {
      final String output = formatter.addColorRgb(
        testMessage,
        foreground: foregroundColor,
        background: backgroundColor,
      );
      expect(
        output,
        '\x1B[38;2;0;95;175m\x1B[48;2;0;215;175m$testMessage\x1B[0m',
      );
    });
  });
}
