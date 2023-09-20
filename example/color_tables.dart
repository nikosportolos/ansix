// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi(silent: true);

  void printColorSetTable(
    final List<AnsiColor> colors,
    final String colorSetName,
    final int maxColumns,
    final int size,
  ) {
    final StringBuffer buffer = StringBuffer()
      ..writeln(
        AnsiText(
          '$colorSetName (${colors.length})',
          foregroundColor: AnsiColor.white,
          style: const AnsiTextStyle(
            bold: true,
            boldUnderline: true,
          ),
        ),
      )
      ..writeln();

    for (int i = 0; i < colors.length; i++) {
      if (i != 0 && i % maxColumns == 0) {
        buffer.writeln();
      }
      buffer.write(AnsiText(
        '${colors[i].value}',
        foregroundColor: colors[i].lightness != null && colors[i].lightness! >= 50 //
            ? AnsiColor.black
            : AnsiColor.white,
        backgroundColor: colors[i],
        fixedWidth: size,
        alignment: AnsiTextAlignment.center,
      ));
    }

    buffer
      ..writeln()
      ..writeln();
    print(buffer.toString());
  }

  print('');
  printColorSetTable(AnsiColorSet.system, 'System colors', 8, 12);
  printColorSetTable(AnsiColorSet.extended, 'Extended colors', 36, 5);
  printColorSetTable(AnsiColorSet.greyscale, 'Greyscale colors', 12, 12);
}
