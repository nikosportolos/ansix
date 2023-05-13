// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  for (final AnsiBorderType type in AnsiBorderType.values) {
    print('');
    print(type.name.bold());
    final AnsiTable table = AnsiTable.fromList(
      <Object?>[
        'Name',
        'red',
        'green',
        'blue',
      ],
      border: AnsiBorder(
        type: type,
        style: AnsiBorderStyle.square,
      ),
    );

    print(table);
  }
}
