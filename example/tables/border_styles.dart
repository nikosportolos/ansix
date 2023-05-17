// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  print('');

  for (final AnsiBorderStyle style in AnsiBorderStyle.values) {
    final AnsiTable table = AnsiTable.fromList(
      <Object?>[
        AnsiText(
          style.toString(),
          fixedWidth: 35,
          padding: AnsiPadding.symmetric(
            vertical: 1,
            horizontal: 5,
          ),
          alignment: AnsiTextAlignment.center,
        )
      ],
      fixedWidth: 10,
      defaultAlignment: AnsiTextAlignment.center,
      border: AnsiBorder(
        type: AnsiBorderType.outside,
        style: style,
      ),
    );

    print(table);
  }
}
