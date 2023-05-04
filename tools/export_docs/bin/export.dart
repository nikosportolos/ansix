import 'package:export_docs/src/export_color_images.dart';
import 'package:export_docs/src/export_colors_to_markdown.dart';

void main() async {
  await ExportColorImages.export();
  ExportColorsToMarkdown.export();
}
