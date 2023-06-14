import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiTable.fromMap', () {
    group('horizontal', () {
      final Map<Object, List<Object?>> horizontalData = <Object, List<Object?>>{
        AnsiText('Row 1'): <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
        'Row 2': <Object?>['test1', 'test2', 'test342423423', AnsiText('test4'), 'test5'],
      };

      test('auto', () {
        expect(
          AnsiTable.fromMap(
            horizontalData,
            border: const AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.rounded,
            ),
            orientation: AnsiOrientation.horizontal,
          ).toString(),
          horizontalTableMock,
        );
      });

      test('fixed', () {
        expect(
          AnsiTable.fromMap(
            horizontalData,
            border: const AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.rounded,
            ),
            orientation: AnsiOrientation.horizontal,
            fixedWidth: 20,
          ).toString(),
          horizontalTableFixedMock,
        );
      });
    });

    group('vertical', () {
      final Map<String, List<Object?>> verticalData = <String, List<Object?>>{
        'Column 1': <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
        'Column 2': <Object?>['row 1', AnsiText('row 2'), 'this is a long text', '', 'row 5'],
      };

      test('auto', () {
        expect(
          AnsiTable.fromMap(
            verticalData,
            border: const AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.square,
            ),
            orientation: AnsiOrientation.vertical,
          ).toString(),
          verticalTableMock,
        );
      });

      test('fixed', () {
        expect(
          AnsiTable.fromMap(
            verticalData,
            border: const AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.square,
            ),
            orientation: AnsiOrientation.vertical,
            keepSameWidth: true,
          ).toString(),
          verticalTableFixedMock,
        );
      });
    });

    test('with styles', () {
      const AnsiTextTheme headerTheme = AnsiTextTheme(
        foregroundColor: AnsiColor.darkSeaGreen4,
        style: AnsiTextStyle(bold: true),
      );

      final AnsiTable table = AnsiTable.fromMap(<Object, List<Object?>>{
        'Column 1': <Object?>[1, 2, 3, 4, 5, 6, 7],
        'Column 2'.bold(): <Object?>[1, 2, 3, 4, 5, '', 7],
        AnsiText.withTheme('Column 3', headerTheme): <Object?>[
          'row 1',
          'row 2',
          'this is a long text'.red(),
          '',
          'row 5',
          '',
          'row 7',
        ],
      },
          border: const AnsiBorder(
            type: AnsiBorderType.all,
            style: AnsiBorderStyle.square,
          ),
          orientation: AnsiOrientation.vertical,
          keepSameWidth: true,
          headerTextTheme: headerTheme,
          cellTextTheme: const AnsiTextTheme(
            foregroundColor: AnsiColor.cadetBlue,
          ),
          footerTextTheme: const AnsiTextTheme(
            backgroundColor: AnsiColor.grey11,
            alignment: AnsiTextAlignment.right,
            style: AnsiTextStyle(italic: true),
          ));
      expect(table.formattedText, tableWithStylesMock);
    });
  });
}

const String horizontalTableMock = '''
╭─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────┬─────────────╮
│Row 1        │1            │2            │3            │4            │5            │6            │7            │8            │9            │
├─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┼─────────────┤
│Row 2        │test1        │test2        │test342423423│test4        │test5        │             │             │             │             │
╰─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────┴─────────────╯''';

const String horizontalTableFixedMock = '''
╭────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────┬────────────────────╮
│Row 1               │1                   │2                   │3                   │4                   │5                   │6                   │7                   │8                   │9                   │
├────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┼────────────────────┤
│Row 2               │test1               │test2               │test342423423       │test4               │test5               │                    │                    │                    │                    │
╰────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────┴────────────────────╯''';

const String verticalTableMock = '''
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

const String verticalTableFixedMock = '''
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

const String tableWithStylesMock = '''
┌───────────────────┬───────────────────┬───────────────────┐
│[38;5;65m[1m[38;5;65m[1mColumn 1[22m[0m[22m[0m           │[38;5;65m[1m[38;5;65m[1m[1mColumn 2[22m[22m[0m[22m[0m           │[38;5;65m[1m[38;5;65m[1mColumn 3[22m[0m[22m[0m           │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m1[0m[0m                  │[38;5;72m[38;5;72m1[0m[0m                  │[38;5;72m[38;5;72mrow 1[0m[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m2[0m[0m                  │[38;5;72m[38;5;72m2[0m[0m                  │[38;5;72m[38;5;72mrow 2[0m[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m3[0m[0m                  │[38;5;72m[38;5;72m3[0m[0m                  │[38;5;72m[38;5;72m[38;5;9mthis is a long text[0m[0m[0m│
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m4[0m[0m                  │[38;5;72m[38;5;72m4[0m[0m                  │                   │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m5[0m[0m                  │[38;5;72m[38;5;72m5[0m[0m                  │[38;5;72m[38;5;72mrow 5[0m[0m              │
├───────────────────┼───────────────────┼───────────────────┤
│[38;5;72m[38;5;72m6[0m[0m                  │                   │                   │
├───────────────────┼───────────────────┼───────────────────┤
│                  [3m[48;5;234m[0m[48;5;234m[3m7[23m[0m[48;5;234m[0m[23m│                  [3m[48;5;234m[0m[48;5;234m[3m7[23m[0m[48;5;234m[0m[23m│              [3m[48;5;234m[0m[48;5;234m[3mrow 7[23m[0m[48;5;234m[0m[23m│
└───────────────────┴───────────────────┴───────────────────┘''';
