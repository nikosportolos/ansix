// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/orientation.dart';

void main() {
  print(AnsiTable.fromMap(
    <String, List<Object?>>{
      'Row 1': <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Row 2': <Object?>['test1', 'test2', 'test342423423', 'test4', 'test5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.horizontal,
    fixedWidth: 20,
  ));

  print(AnsiTable.fromMap(
    <String, List<Object?>>{
      'Column 1': <Object?>[1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Column 2': <Object?>['row 1', 'row 2', 'this is a long text', '', 'row 5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.square,
    ),
    orientation: AnsiOrientation.vertical,
    keepSameWidth: true,
  ));
}
