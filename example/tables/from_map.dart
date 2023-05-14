import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/orientation.dart';

void main() {
  print(AnsiTable.fromMap(
    {
      'Row 1': [1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Row 2': ['test1', 'test2', 'test342423423', 'test4', 'test5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.horizontal,
    // fixedWidth: 15,
  ));

  print(AnsiTable.fromMap(
    {
      'Column 1': [1, 2, 3, 4, 5, 6, 7, 8, 9],
      'Column 2': ['test1', 'test2', 'test324234', 'test4', 'test5'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.vertical,
  ));
}
