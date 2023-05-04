import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:path/path.dart';

const String separator = '|';

final String basePath = join(Directory.current.path, 'docs', 'colors');

void main() {
  final Directory directory = Directory(basePath);
  if (directory.existsSync()) {
    directory.deleteSync(recursive: true);
  }

  printColorSet(AnsiColorSet.all, 'All');
  printColorSet(AnsiColorSet.system, 'System');
  printColorSet(AnsiColorSet.extended, 'Extended');
  printColorSet(AnsiColorSet.greyscale, 'Greyscale');
}

void printColorSet(
  final List<AnsiColor> colors,
  final String colorSetName,
) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln('## $colorSetName color set');
  buffer.writeLines(2);
  buffer.writeln('| Name | Hex | RGB | Background | Foreground |');
  buffer.writeln('|------|-----|-----|------------|------------|');

  for (final AnsiColor color in colors) {
    if (color == AnsiColor.none) {
      continue;
    }
    final String sampleText = 'This is a sample text in **[${color.name}]** color';

    buffer.writeln(
      '$separator'
      '<p style="color:rgb${color.name.toString()};">${color.name}</p>'
      '$separator'
      '${color.hex}'
      '$separator'
      '${color.rgb?.toString()}'
      '$separator'
      '<p style="color:rgb${color.rgb.toString()};background-color:rgb${color.rgb.toString()};">$sampleText</p>'
      '$separator'
      '<p style="color:rgb${color.rgb.toString()};">$sampleText</p>'
      '$separator',
    );
  }
  buffer.writeln();

  final File markdown = File(
    join(basePath, '${colorSetName.toLowerCase()}.md'),
  );

  if (!markdown.existsSync()) {
    markdown.createSync(recursive: true);
  }
  markdown.writeAsStringSync(buffer.toString());
}
