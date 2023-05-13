// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  print(StringBuffer()
    ..writeColored('Hello ', AnsiColor.blue)
    ..writeStyled(
      'AnsiX ',
      textStyle: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.aquamarine2,
    )
    ..writeColored('!', AnsiColor.fuchsia)
    ..writeColored('!', AnsiColor.red1)
    ..writeColored('!', AnsiColor.darkOrange3)
    ..toString());
}
