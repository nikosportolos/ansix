// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  print(AnsiTable.fromMap(
    <Object, List<Object?>>{
      'Row 1'.red(): <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Row 2': <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      AnsiText(
        'Row 3',
        textStyle: const AnsiTextStyle(strikethrough: true),
        foregroundColor: AnsiColor.deepSkyBlue5,
      ): <Object?>['test1', 'test2', 'test342423423', 'test4', 'test5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.horizontal,
    fixedWidth: 20,
  ));

  print(AnsiTable.fromMap(
    <Object, List<Object?>>{
      'Column 1': <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Column 2'.bold(): <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      AnsiText('Column 3'): <Object?>['row 1', 'row 2', 'this is a long text', '', 'row 5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.square,
    ),
    orientation: AnsiOrientation.vertical,
    keepSameWidth: true,
  ));
}
