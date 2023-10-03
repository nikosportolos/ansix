import 'package:ansix/ansix.dart';
import 'package:export_docs/src/core.dart';
import 'package:image/image.dart';
import 'package:path/path.dart';

void main() {
  ExportColorImages.export();
}

/// Export colors to images
abstract class ExportColorImages {
  static Future<void> export() async {
    for (int i = 0; i < AnsiColorSet.all.length; i++) {
      await _generateColorImage(i + 1, AnsiColorSet.all[i]);
    }
  }

  static Future<void> _generateColorImage(
      final int index, final AnsiColor color) async {
    if (color.rgb == null) {
      return;
    }

    // ignore: avoid_print
    print(
        '$index - Generating ${color.pngFilename.colored(foreground: color)}');

    const int imageSize = 48;
    const int radius = (imageSize - 1) ~/ 2;

    await (Command()
          ..createImage(
            width: imageSize,
            height: imageSize,
            numChannels: 4,
          )
          ..fillCircle(
            x: radius,
            y: radius,
            radius: radius,
            color: ColorRgba8(
              color.rgb!.red,
              color.rgb!.green,
              color.rgb!.blue,
              255,
            ),
          )
          ..writeToFile(join(
            colorImageExportPath,
            color.pngFilename,
          )))
        .execute();
  }
}
