// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  final List<List<dynamic>> data = <List<dynamic>>[
    <dynamic>[
      'Name',
      AnsiColor.red.name,
      AnsiColor.green.name,
      AnsiColor.blue.name
    ],
    <dynamic>[
      'Hex',
      AnsiColor.red.hex,
      AnsiColor.green.hex,
      AnsiColor.blue.hex
    ],
    <dynamic>[
      'RGB',
      AnsiColor.red.rgb,
      AnsiColor.green.rgb,
      AnsiColor.blue.rgb
    ],
  ];

  for (final AnsiBorderType type in AnsiBorderType.values) {
    print('');
    print(type.name.bold());

    final AnsiGrid grid = AnsiGrid.fromColumns(
      data,
      theme: AnsiGridTheme(
        border: AnsiBorder(
          style: AnsiBorderStyle.square,
          type: type,
        ),
        cellTextTheme: const AnsiTextTheme(
          fixedWidth: 15,
        ),
      ),
    );

    print(grid);
  }
}
