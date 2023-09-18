import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiGrid', () {
    group('horizontal', () {
      final List<List<Object>> horizontalData = <List<Object>>[
        <Object>[AnsiText('Row 1'), 1, 2, 3, 4, 5, 6, 7, 8, 9],
        <Object>['Row 2', 'test1', 'test2', 'test342423423', AnsiText('test4'), 'test5'],
      ];

      test('auto', () {
        expect(
          AnsiGrid.fromColumns(
            horizontalData,
            theme: const AnsiGridTheme(
              border: AnsiBorder(
                type: AnsiBorderType.all,
                style: AnsiBorderStyle.rounded,
              ),
              orientation: AnsiOrientation.horizontal,
              transparent: true,
            ),
          ).toString(),
          horizontalGridMock,
        );
      });

      test('fixed', () {
        expect(
          AnsiGrid.fromColumns(
            horizontalData,
            theme: const AnsiGridTheme(
              border: AnsiBorder(
                type: AnsiBorderType.all,
                style: AnsiBorderStyle.rounded,
              ),
              orientation: AnsiOrientation.horizontal,
              fixedCellWidth: 20,
              transparent: true,
            ),
          ).toString(),
          horizontalGridFixedMock,
        );
      });
    });

    group('vertical', () {
      final List<List<Object>> verticalData = <List<Object>>[
        <Object>['Column 1', 1, 2, 3, 4, 5, 6, 7, 8, 9],
        <Object>['Column 2', 'row 1', AnsiText('row 2'), 'this is a long text', '', 'row 5'],
      ];

      test('auto', () {
        expect(
          AnsiGrid.fromColumns(verticalData,
              theme: const AnsiGridTheme(
                border: AnsiBorder(
                  type: AnsiBorderType.all,
                  style: AnsiBorderStyle.square,
                ),
                transparent: true,
                keepSameWidth: false,
                orientation: AnsiOrientation.vertical,
              )).toString(),
          verticalGridMock,
        );
      });

      test('fixed', () {
        expect(
          AnsiGrid.fromColumns(
            verticalData,
            theme: const AnsiGridTheme(
              border: AnsiBorder(
                type: AnsiBorderType.all,
                style: AnsiBorderStyle.square,
              ),
              orientation: AnsiOrientation.vertical,
              keepSameWidth: true,
              transparent: true,
            ),
          ).toString(),
          verticalGridFixedMock,
        );
      });
    });

    group('with styles', () {
      test('all styles', () {
        const AnsiTextTheme headerTheme = AnsiTextTheme(
          foregroundColor: AnsiColor.darkSeaGreen4,
          style: AnsiTextStyle(bold: true),
        );

        final AnsiGrid grid = AnsiGrid.fromColumns(
          <List<Object?>>[
            <Object?>['Column 1', 1, 2, 3, 4, 5, 6, 7],
            <Object?>['Column 2'.bold(), 1, 2, 3, 4, 5, '', 7],
            <Object?>[
              AnsiText.withTheme('Column 3', headerTheme),
              'row 1',
              'row 2',
              'this is a long text'.red(),
              '',
              'row 5',
              '',
              'row 7',
              'row 7',
            ],
          ],
          theme: const AnsiGridTheme(
            border: AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.square,
            ),
            orientation: AnsiOrientation.vertical,
            keepSameWidth: true,
            transparent: true,
            overrideTheme: true,
            headerTextTheme: headerTheme,
            cellTextTheme: AnsiTextTheme(
              foregroundColor: AnsiColor.cadetBlue,
            ),
            footerTextTheme: AnsiTextTheme(
              backgroundColor: AnsiColor.grey11,
              alignment: AnsiTextAlignment.right,
              style: AnsiTextStyle(italic: true),
            ),
          ),
        );

        expect(grid.formattedText, gridWithAllStylesMock);
      });

      test('only cell style', () {
        final AnsiGrid grid = AnsiGrid.fromColumns(
          <List<Object?>>[
            <Object?>['Column 1', 1, 2, 3, 4, 5, 6, 7],
            <Object?>['Column 2'.bold(), 1, 2, 3, 4, 5, '', 7],
            <Object?>[
              'Column 3',
              'row 1',
              'row 2',
              'this is a long text'.red(),
              '',
              'row 5',
              '',
              'row 7',
            ],
          ],
          theme: const AnsiGridTheme(
            border: AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.square,
            ),
            orientation: AnsiOrientation.vertical,
            keepSameWidth: true,
            transparent: true,
            overrideTheme: true,
            cellTextTheme: AnsiTextTheme(
              foregroundColor: AnsiColor.cadetBlue,
            ),
          ),
        );

        expect(grid.formattedText, gridWithCellStyleMock);
      });
    });
  });
}

const String horizontalGridMock = '''
╭─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────╮
│Row 1        │1            │2            │3            │4            │5            │6            │7            │8            │9            │
├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
│Row 2        │test1        │test2        │test342423423│test4        │test5        │             │             │             │             │
╰─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────╯''';

const String horizontalGridFixedMock = '''
╭────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────╮
│Row 1               │1                   │2                   │3                   │4                   │5                   │6                   │7                   │8                   │9                   │
├────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┤
│Row 2               │test1               │test2               │test342423423       │test4               │test5               │                    │                    │                    │                    │
╰────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────╯''';

const String verticalGridMock = '''
┌────────┬───────────────────┐
│Column 1│Column 2           │
├────────┼───────────────────┤
│1       │row 1              │
├────────┼───────────────────┤
│2       │row 2              │
├────────┼───────────────────┤
│3       │this is a long text│
├────────┼───────────────────┤
│4       │                   │
├────────┼───────────────────┤
│5       │row 5              │
├────────┼───────────────────┤
│6       │                   │
├────────┼───────────────────┤
│7       │                   │
├────────┼───────────────────┤
│8       │                   │
├────────┼───────────────────┤
│9       │                   │
└────────┴───────────────────┘''';

const String verticalGridFixedMock = '''
┌───────────────────┬───────────────────┐
│Column 1           │Column 2           │
├───────────────────┼───────────────────┤
│1                  │row 1              │
├───────────────────┼───────────────────┤
│2                  │row 2              │
├───────────────────┼───────────────────┤
│3                  │this is a long text│
├───────────────────┼───────────────────┤
│4                  │                   │
├───────────────────┼───────────────────┤
│5                  │row 5              │
├───────────────────┼───────────────────┤
│6                  │                   │
├───────────────────┼───────────────────┤
│7                  │                   │
├───────────────────┼───────────────────┤
│8                  │                   │
├───────────────────┼───────────────────┤
│9                  │                   │
└───────────────────┴───────────────────┘''';

const String gridWithAllStylesMock = '''┌───────────────────┬───────────────────┬───────────────────┐
│[1m[38;5;65mColumn 1[22m[0m           │[1m[38;5;65m[1mColumn 2[22m[22m[0m           │[1m[38;5;65mColumn 3[22m[0m           │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m1[0m                  │[38;5;72m1[0m                  │[38;5;72mrow 1[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m2[0m                  │[38;5;72m2[0m                  │[38;5;72mrow 2[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m3[0m                  │[38;5;72m3[0m                  │[38;5;72m[38;5;9mthis is a long text[0m[0m│
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m4[0m                  │[38;5;72m4[0m                  │                   │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m5[0m                  │[38;5;72m5[0m                  │[38;5;72mrow 5[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m6[0m                  │                   │                   │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m7[0m                  │[38;5;72m7[0m                  │[38;5;72mrow 7[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[48;5;234m                   [0m│[48;5;234m                   [0m│[48;5;234m              [0m[48;5;234m[3mrow 7[23m[0m│
└───────────────────┴───────────────────┴───────────────────┘''';

const String gridWithCellStyleMock = '''┌───────────────────┬───────────────────┬───────────────────┐
│[38;5;72mColumn 1[0m           │[38;5;72m[1mColumn 2[22m[0m           │[38;5;72mColumn 3[0m           │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m1[0m                  │[38;5;72m1[0m                  │[38;5;72mrow 1[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m2[0m                  │[38;5;72m2[0m                  │[38;5;72mrow 2[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m3[0m                  │[38;5;72m3[0m                  │[38;5;72m[38;5;9mthis is a long text[0m[0m│
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m4[0m                  │[38;5;72m4[0m                  │                   │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m5[0m                  │[38;5;72m5[0m                  │[38;5;72mrow 5[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m6[0m                  │                   │                   │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m7[0m                  │[38;5;72m7[0m                  │[38;5;72mrow 7[0m              │
└───────────────────┴───────────────────┴───────────────────┘''';
