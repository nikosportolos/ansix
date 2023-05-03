// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:ansix/src/core/exceptions/exceptions.dart';

const int fixedWidth = 30;

void main() {
  try {
    AnsiX.ensureSupportsAnsi();
  } on AnsiXException catch (e) {
    print(e);
  }
  printColorSet(AnsiColor.all);
}

void printColorSet(List<AnsiColor> colors) {
  for (final AnsiColor color in AnsiColor.all) {
    print(
      '|'
      '${AnsiText(
        color.name,
        foregroundColor: color,
        fixedWidth: fixedWidth,
        textAlignment: AnsiTextAlignment.left,
      )}'
      '|'
      '${AnsiText(
        color.hex,
        foregroundColor: color,
        fixedWidth: fixedWidth,
        textAlignment: AnsiTextAlignment.center,
      )}'
      '|'
      '${AnsiText(
        '${color.rgb}',
        foregroundColor: color,
        fixedWidth: fixedWidth,
        textAlignment: AnsiTextAlignment.right,
      )}'
      '|'
      '${AnsiText(
        '',
        backgroundColor: color,
        fixedWidth: fixedWidth,
      )}'
      '|',
    );
  }
}

void printColors(AnsiColor color1, AnsiColor color2) {
  print(
    '${AnsiText(
      '$color1'.padLeft(fixedWidth),
      backgroundColor: color1,
    )}'
    ' == '
    '${AnsiText(
      '$color2'.padRight(fixedWidth),
      backgroundColor: color2,
    )}',
  );
}
