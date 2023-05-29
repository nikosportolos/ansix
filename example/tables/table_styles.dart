// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

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
    print('');
    print(type.name.bold());

    final AnsiTable table = AnsiTable(
      border: AnsiBorder(
        style: AnsiBorderStyle.square,
        type: type,
      ),
      rows: <AnsiTableRow>[
        AnsiTableRow(data: headerData),
        ...data,
      ],
    );
    print(table.toString());
  }
}
