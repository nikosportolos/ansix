// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  print(StringBuffer()
    ..writeWithForegroundColor('Hello ', AnsiColor.blue)
    ..writeStyled(
      'AnsiX ',
      textStyle: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.aquamarine2,
    )
    ..writeWithForegroundColor('!', AnsiColor.fuchsia)
    ..writeWithForegroundColor('!', AnsiColor.red1)
    ..writeWithForegroundColor('!', AnsiColor.darkOrange3)
    ..toString());
}
