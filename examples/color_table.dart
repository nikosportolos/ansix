// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  void printColorSetTable(
    final List<AnsiColor> colors,
    final String colorSetName,
    final int splitLinesEvery,
  ) {
    final StringBuffer buffer = StringBuffer()
      ..writeln(
        AnsiText(
          '$colorSetName (${colors.length})',
          foregroundColor: AnsiColor.white,
          textStyle: const AnsiTextStyle(
            bold: true,
            boldUnderline: true,
          ),
        ),
      )
      ..writeln();

    for (int i = 0; i < colors.length; i++) {
      if (i != 0 && i % splitLinesEvery == 0) {
        buffer.writeln();
      }
      buffer.write(AnsiText(
        '${colors[i].value}',
        foregroundColor: colors[i].lightness != null && colors[i].lightness! > 50 //
            ? AnsiColor.black
            : AnsiColor.white,
        backgroundColor: colors[i],
        fixedWidth: 10,
        textAlignment: AnsiTextAlignment.center,
      ));
    }

    buffer
      ..writeln()
      ..writeln();
    print(buffer.toString());
  }

  print('');
  printColorSetTable(AnsiColor.system, 'System colors', 8);
  printColorSetTable(AnsiColor.extended, 'Extended colors', 18);
  printColorSetTable(AnsiColor.greyscale, 'Greyscale colors', 12);
}
