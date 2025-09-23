import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/rgb.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void main() {
  final RgbTextFormatter formatter = RgbTextFormatter();

  group('RgbTextFormatter', () {
    test('withStyle', () {
      for (final AnsiStyle style in AnsiStyle.values) {
        final String output = formatter.withStyle(testMessage, style);
        expect(
          output,
          '${style.startEscapeCode}$testMessage${style.endEscapeCode}',
        );
      }
    });

    test('withColor', () {
      expect(
        formatter.withColor(
          testMessage,
          foreground: foregroundColor,
          background: backgroundColor,
        ),
        '\x1B[38;2;0;95;175m\x1B[48;2;0;215;175m$testMessage\x1B[0m',
      );
      expect(
        formatter.withColor(testMessage, background: backgroundColor),
        '\x1B[48;2;0;215;175m$testMessage\x1B[0m',
      );
      expect(
        formatter.withColor(testMessage, foreground: foregroundColor),
        '\x1B[38;2;0;95;175m$testMessage\x1B[0m',
      );
    });

    group('Widgets', () {
      AnsiX.colorFormat = ColorFormat.rgb;

      test('AnsiText', () {
        expect(
          AnsiText(
            testMessage,
            foregroundColor: foregroundColor,
            backgroundColor: backgroundColor,
          ).formattedText,
          '\x1B[48;2;0;215;175m\x1B[38;2;0;95;175m$testMessage\x1B[0m',
        );
      });

      test('AnsiGrid', () {
        final AnsiGrid grid = AnsiGrid.fromRows(
          <List<Object>>[
            <Object>[AnsiText('Row 1'), 1, 2, 3, 4, 5, 6, 7, 8, 9],
            <Object>[
              'Row 2',
              'test1',
              'test2',
              'test342423423',
              AnsiText('test4', foregroundColor: AnsiColor.cadetBlue2),
              'test5',
            ],
          ],
          theme: const AnsiGridTheme(
            border: AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.rounded,
              color: AnsiColor.indianRed2,
            ),
            orientation: AnsiOrientation.horizontal,
            transparent: true,
            cellTextTheme: AnsiTextTheme(
              foregroundColor: AnsiColor.indianRed2,
              backgroundColor: AnsiColor.grey30,
            ),
          ),
        );

        expect(grid.formattedText, _mockGrid);
      });
    });
  });
}

const String _mockGrid = '''
[38;2;255;95;135m╭─────────────┬─────────────╮[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mRow 1[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mRow 2[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m1[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mtest1[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m2[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mtest2[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m3[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mtest342423423[0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m4[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mtest4[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m5[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135mtest5[0m[48;2;78;78;78m        [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m6[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m             [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m7[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m             [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m8[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m             [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m├─────────────┼─────────────┤[0m
[38;2;255;95;135m│[0m[48;2;78;78;78m[38;2;255;95;135m9[0m[48;2;78;78;78m            [0m[38;2;255;95;135m│[0m[48;2;78;78;78m             [0m[38;2;255;95;135m│[0m
[38;2;255;95;135m╰─────────────┴─────────────╯[0m''';
