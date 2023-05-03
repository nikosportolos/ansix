// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  final StringBuffer buffer = StringBuffer()..writeLines(3);
  const int width = 60;

  for (final AnsiTextAlignment alignment in AnsiTextAlignment.values) {
    buffer
      ..write('|')
      ..write(AnsiText(
        'This is a text with [${alignment.name}] alignment',
        textAlignment: alignment,
        fixedWidth: width,
      ))
      ..write('|')
      ..writeln();
  }

  print(buffer.toString());
}
