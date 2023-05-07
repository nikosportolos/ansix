// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  const String testMessage = 'This is a test message.';
  const int fixedWidth = 30;

  group('AnsiText', () {
    group('fixedWidth', () {
      test('text.length < fixedWidth', () {
        expect(
          AnsiText(testMessage, fixedWidth: fixedWidth).toString().length,
          fixedWidth,
        );
      });

      test('text.length > fixedWidth', () {
        expect(
          AnsiText(testMessage, fixedWidth: 10).toString().length,
          testMessage.length,
        );
      });

      test('text.length = fixedWidth', () {
        expect(
          AnsiText(testMessage, fixedWidth: testMessage.length).toString().length,
          testMessage.length,
        );
      });
    });

    group('textStyle', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        test(style.name, () {
          final AnsiTextStyle textStyle = AnsiTextStyle.fromStyle(style);
          final AnsiText ansiText = AnsiText(testMessage, textStyle: textStyle);
          print(ansiText);

          expect(
            ansiText.toString(),
            '${style.startEscapeCode}$testMessage${style.endEscapeCode}',
          );

          expect(ansiText.width, testMessage.length);
        });
      }
    });

    group('textAlignment', () {
      for (final AnsiTextAlignment alignment in AnsiTextAlignment.values) {
        test(alignment.name, () {
          final AnsiText ansiText = AnsiText(
            testMessage,
            textAlignment: alignment,
          );
          print(ansiText);
          expect(ansiText.toString().length, testMessage.length);

          final AnsiText fixedAnsiText = AnsiText(
            testMessage,
            textAlignment: alignment,
            fixedWidth: fixedWidth,
          );
          print(fixedAnsiText);
          expect(fixedAnsiText.toString().length, fixedWidth);
        });
      }
    });
  });
}
