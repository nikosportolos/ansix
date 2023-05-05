import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi(silent: true);

  final StringBuffer buffer = StringBuffer()..writeLines(2);
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

  // ignore: avoid_print
  print(buffer.toString());
}
