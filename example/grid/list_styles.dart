// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  for (final AnsiBorderType type in AnsiBorderType.values) {
    print('');
    print(type.name.bold());

    final AnsiGrid grid = AnsiGrid.list(
      <Object?>[
        'Name',
        'red',
        'green',
        'blue',
      ],
      theme: AnsiGridTheme(
        border: AnsiBorder(
          type: type,
          style: AnsiBorderStyle.square,
        ),
      ),
    );

    print(grid);
  }
}
