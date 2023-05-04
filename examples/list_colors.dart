// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

const int fixedWidth = 30;

void main() {
  void printColorSet(List<AnsiColor> colors) {
    for (final AnsiColor color in AnsiColorSet.all) {
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

  printColorSet(AnsiColorSet.all);
}
