// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();
  AnsiX.allowPrint = true;

  print(
    AnsiOutlinedText(
      'This is a text with rounded borders',
      border: const AnsiBorder(
        color: AnsiColor.deepSkyBlue4,
        type: AnsiBorderType.header,
        style: AnsiBorderStyle.rounded,
      ),
      foregroundColor: AnsiColor.salmon1,
      padding: AnsiPadding.horizontal(2),
    ),
  );

  print(
    AnsiOutlinedText(
      'This is a text with vertical padding\nand yellow square borders',
      border: const AnsiBorder(
        color: AnsiColor.yellow5,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.square,
      ),
      foregroundColor: AnsiColor.darkSeaGreen7,
      padding: AnsiPadding.vertical(2),
    ),
  );

  print(
    AnsiOutlinedText(
      'This is a demo \ntable with multiple\n\nlines',
      padding: AnsiPadding.symmetric(
        vertical: 1,
        horizontal: 5,
      ),
      foregroundColor: AnsiColor.darkKhaki,
      border: const AnsiBorder(
        color: AnsiColor.green4,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.double,
      ),
    ),
  );
}
