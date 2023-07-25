// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  print(AnsiGrid.fromColumns(
    <List<Object?>>[
      <Object?>['Row 1'.red(), 145, 342, 53, 3454, 655, 346],
      <Object?>['Row 2', 51, 235, 35, 434, 5354, 645, 75],
      <Object?>[
        AnsiText(
          'Row 3',
          style: const AnsiTextStyle(strikethrough: true),
          foregroundColor: AnsiColor.deepSkyBlue5,
        ),
        '43',
        '234'.bold(),
        '5345435345345345'.red(),
        '34534',
        '234234'
      ],
    ],
    theme: const AnsiGridTheme(
      border: AnsiBorder(
        type: AnsiBorderType.all,
        style: AnsiBorderStyle.rounded,
      ),
      orientation: AnsiOrientation.horizontal,
      keepSameWidth: true,
      fixedCellWidth: 20,
    ),
  ));

  const AnsiTextTheme headerTheme = AnsiTextTheme(
    foregroundColor: AnsiColor.darkSeaGreen4,
    style: AnsiTextStyle(bold: true),
  );

  print(AnsiGrid.fromColumns(
    <List<Object?>>[
      <Object?>['Column 1', 1, 2, 3, 4, 5, 6],
      <Object?>['Column 2'.bold(), 1, 2, 3, 4, 5],
      <Object?>[
        AnsiText.withTheme('Column 3', headerTheme),
        'row 1',
        'row 2',
        'this is a long text'.red(),
        '',
        'row 5'
      ],
    ],
    theme: const AnsiGridTheme(
      border: AnsiBorder(
        type: AnsiBorderType.all,
        style: AnsiBorderStyle.square,
      ),
      orientation: AnsiOrientation.vertical,
      keepSameWidth: true,
      headerTextTheme: headerTheme,
      cellTextTheme: AnsiTextTheme(
        foregroundColor: AnsiColor.cadetBlue,
      ),
    ),
  ));
}
