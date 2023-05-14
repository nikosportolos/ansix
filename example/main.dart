// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();

  // String extensions
  print('This is a bold text'.bold());
  print('This is a text with red foreground color'.red());

  // StringBuffer extensions
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
