// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  for (final AnsiBorderStyle style in AnsiBorderStyle.values) {
    print(
      AnsiOutlinedText(
        style.toString(),
        border: AnsiBorder(
          type: AnsiBorderType.outside,
          style: style,
        ),
        fixedWidth: 35,
        alignment: AnsiTextAlignment.center,
        padding: AnsiPadding.symmetric(
          vertical: 1,
          horizontal: 5,
        ),
      ),
    );
  }
}
