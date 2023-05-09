import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:ansix/src/widgets/table/table.dart';
import 'package:test/test.dart';

part 'mocks.dart';

void main() {
  const int fixedWidth = 15;

  final List<AnsiTableCell> headerData = <AnsiTableCell>[
    AnsiTableCell(
      'Name',
      width: fixedWidth,
    ),
    AnsiTableCell(
      'Hex',
      width: fixedWidth,
    ),
    AnsiTableCell(
      'RGB',
      width: fixedWidth,
    ),
  ];

  final List<AnsiTableRow> data = <AnsiColor>[
    AnsiColor.red,
    AnsiColor.green,
    AnsiColor.blue,
  ].map((AnsiColor color) {
    return AnsiTableRow(
      data: <AnsiTableCell>[
        AnsiTableCell(
          color.name,
          width: fixedWidth,
        ),
        AnsiTableCell(
          color.hex,
          width: fixedWidth,
        ),
        AnsiTableCell(
          color.rgb.toString(),
          width: fixedWidth,
        ),
      ],
    );
  }).toList(growable: false);

  for (final AnsiBorderType type in AnsiBorderType.values) {
    final AnsiBorder border = AnsiBorder(
      style: AnsiBorderStyle.square,
      type: type,
    );
    group(type.name, () {
      test('AnsiTable', () {
        final AnsiTable table = AnsiTable(
          border: border,
          data: <AnsiTableRow>[
            AnsiTableRow(data: headerData),
            ...data,
          ],
        );

        expect(table.toString(), tableMocks[type]);
      });

      test('AnsiTable.fromList', () {
        final AnsiTable list = AnsiTable.fromList(
          border: border,
          <Object?>[
            'Name',
            ...<AnsiColor>[
              AnsiColor.red,
              AnsiColor.green,
              AnsiColor.blue,
            ].map((AnsiColor color) {
              return color.name;
            }),
          ],
        );

        expect(list.toString(), listMocks[type]);
      });
    });
  }
}
