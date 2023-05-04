// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/fixed_table.dart';
import 'package:ansix/src/widgets/table/row/row.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  const int fixedWidth = 35;

  final List<AnsiTableCell> headerData = <AnsiTableCell>[
    AnsiTableCell(
      'Name',
      width: fixedWidth,
      textAlignment: AnsiTextAlignment.left,
      foregroundColor: AnsiColor.black,
      backgroundColor: AnsiColor.darkOliveGreen3,
      textStyle: const AnsiTextStyle(bold: true),
    ),
    AnsiTableCell(
      'Hex',
      width: fixedWidth,
      textAlignment: AnsiTextAlignment.center,
      foregroundColor: AnsiColor.black,
      backgroundColor: AnsiColor.deepSkyBlue5,
      textStyle: const AnsiTextStyle(strikethrough: true),
    ),
    AnsiTableCell(
      'RGB',
      width: fixedWidth,
      textAlignment: AnsiTextAlignment.center,
      foregroundColor: AnsiColor.black,
      backgroundColor: AnsiColor.dodgerBlue2,
      textStyle: const AnsiTextStyle(underline: true),
    ),
    AnsiTableCell(
      'Sample',
      width: fixedWidth,
      textAlignment: AnsiTextAlignment.right,
      foregroundColor: AnsiColor.black,
      backgroundColor: AnsiColor.wheat1,
      textStyle: const AnsiTextStyle(italic: true),
    ),
  ];

  final List<AnsiTableRow> data = <AnsiColor>[
    AnsiColor.darkSeaGreen8,
    AnsiColor.seaGreen3,
    AnsiColor.deepSkyBlue6,
  ].map((AnsiColor color) {
    return AnsiTableRow(
      data: <AnsiTableCell>[
        AnsiTableCell(
          color.name,
          foregroundColor: color,
          width: fixedWidth,
          textAlignment: AnsiTextAlignment.left,
        ),
        AnsiTableCell(
          color.hex,
          foregroundColor: color,
          width: fixedWidth,
          textAlignment: AnsiTextAlignment.center,
        ),
        AnsiTableCell(
          color.rgb.toString(),
          foregroundColor: color,
          width: fixedWidth,
          textAlignment: AnsiTextAlignment.center,
        ),
        AnsiTableCell(
          '',
          backgroundColor: color,
          width: fixedWidth,
          textAlignment: AnsiTextAlignment.right,
        ),
      ],
    );
  }).toList(growable: false);

  for (final AnsiBorderType type in AnsiBorderType.values) {
    print('');
    print(type.name.bold());
    final AnsiBorder border = AnsiBorder(
      style: AnsiBorderStyle.double,
      type: type,
      color: AnsiColor.deepSkyBlue4,
    );
    final AnsiFixedTable table = AnsiFixedTable(
      border: border,
      header: AnsiTableRow(data: headerData),
      data: data,
    );
    print(table.toString());
  }
}
