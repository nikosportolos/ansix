import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/theme/orientation.dart';
import 'package:ansix/src/widgets/table/table.dart';
import 'package:ansix/src/widgets/text/text.dart';
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
