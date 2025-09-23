import 'package:ansix/ansix.dart';
import 'package:export_docs/src/core.dart';

abstract class ColorTableForGithub {
  static String markdown(
    final List<AnsiColor> colors,
    final String colorSetName,
  ) {
    final StringBuffer buffer = StringBuffer();

    buffer.writeln('## $colorSetName color set');
    buffer.writeLines(2);
    buffer.writeln('| Name | Hex | RGB | HSL | Sample |');
    buffer.writeln('|------|-----|-----|-----|--------|');

    for (final AnsiColor color in colors) {
      if (color == AnsiColor.none) {
        continue;
      }

      buffer.writeln(
        '|${color.name}|${color.hex}|${color.rgb?.toString()}|${color.hsl?.toString()}|${_getImageUrl(color)}|',
      );
    }
    buffer.writeln();
    return buffer.toString();
  }

  static String _getImageUrl(final AnsiColor color) {
    final String imageUrl = '$colorImageGithubPath/${color.pngFilename}'
        .replaceAll(r'\', '/');
    return '<img src="$imageUrl" width="48">';
  }
}
