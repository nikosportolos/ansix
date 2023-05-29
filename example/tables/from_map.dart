// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  print(AnsiTable.fromMap(
    <Object, List<Object?>>{
      'Row 1'.red(): <Object?>[145, 342, 53, 3454, 655, 346],
      'Row 2': <Object?>[51, 235, 35, 434, 5354, 645, 75],
      AnsiText(
        'Row 3',
        style: const AnsiTextStyle(strikethrough: true),
        foregroundColor: AnsiColor.deepSkyBlue5,
      ): <Object?>['43', '234'.bold(), '5345435345345345'.red(), '34534', '234234'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.horizontal,
    keepSameWidth: true,
    fixedWidth: 20,
  ));

  print(AnsiTable.fromMap(
    <Object, List<Object?>>{
      'Column 1': <Object?>[1, 2, 3, 4, 5, 6],
      'Column 2'.bold(): <Object?>[1, 2, 3, 4, 5],
      AnsiText('Column 3'): <Object?>['row 1', 'row 2', 'this is a long text'.red(), '', 'row 5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.square,
    ),
    orientation: AnsiOrientation.vertical,
    keepSameWidth: true,
  ));
}
