// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  for (final AnsiBorderStyle style in AnsiBorderStyle.values) {
    print('');
    print(style.name.bold());
    final AnsiTable table = AnsiTable.fromList(
      <Object?>['AnsiX'],
      fixedWidth: 10,
      defaultAlignment: AnsiTextAlignment.center,
      border: AnsiBorder(
        type: AnsiBorderType.all,
        style: style,
      ),
    );

    print(table);
  }
}
