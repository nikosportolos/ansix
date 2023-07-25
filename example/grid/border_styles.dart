// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  print('');

  for (final AnsiBorderStyle style in AnsiBorderStyle.values) {
    final AnsiGrid grid = AnsiGrid.single(
      <Object?>[
        AnsiText(
          style.toString(),
          fixedWidth: 35,
          alignment: AnsiTextAlignment.center,
          padding: AnsiPadding.symmetric(
            vertical: 1,
            horizontal: 5,
          ),
        )
      ],
      theme: AnsiGridTheme(
        fixedCellWidth: 10,
        overrideTheme: true,
        border: AnsiBorder(
          type: AnsiBorderType.outside,
          style: style,
        ),
      ),
    );

    print(grid);
  }
}
