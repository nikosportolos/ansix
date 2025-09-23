import 'package:ansix/ansix.dart';

const String _separator = '|';

String printColorSet(final List<AnsiColor> colors, final String colorSetName) {
  final StringBuffer buffer = StringBuffer();

  buffer.writeln('## $colorSetName color set');
  buffer.writeLines(2);
  buffer.writeln('| Name | Hex | RGB | Background | Foreground |');
  buffer.writeln('|------|-----|-----|------------|------------|');

  for (final AnsiColor color in colors) {
    if (color == AnsiColor.none) {
      continue;
    }
    final String sampleText =
        'This is a sample text in **[${color.name}]** color';

    buffer.writeln(
      '$_separator'
      '<p style="color:rgb${color.name.toString()};">${color.name}</p>'
      '$_separator'
      '${color.hex}'
      '$_separator'
      '${color.rgb?.toString()}'
      '$_separator'
      '<p style="color:rgb${color.rgb.toString()};background-color:rgb${color.rgb.toString()};">$sampleText</p>'
      '$_separator'
      '<p style="color:rgb${color.rgb.toString()};">$sampleText</p>'
      '$_separator',
    );
  }
  buffer.writeln();

  return buffer.toString();
}
