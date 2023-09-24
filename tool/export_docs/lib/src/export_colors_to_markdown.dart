import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/ansix.dart';
import 'package:export_docs/src/core.dart';
import 'package:export_docs/src/templates/color_table_github.dart';
import 'package:path/path.dart';

void main() {
  ExportColorsToMarkdown.export();
}

abstract class ExportColorsToMarkdown {
  static void export() {
    final Directory directory = Directory(colorDocsPath);
    if (directory.existsSync()) {
      directory.deleteSync(recursive: true);
    }

    for (final MapEntry<String, List<AnsiColor>> set in AnsiColorSet.map.entries) {
      _printColorSet(set.value, set.key);
    }
  }

  static void _printColorSet(
    final List<AnsiColor> colors,
    final String colorSetName,
  ) {
    final String markdownContent = ColorTableForGithub.markdown(colors, colorSetName);
    final File markdownFile = File(
      join(colorDocsPath, '${colorSetName.toLowerCase()}.md'),
    );

    if (!markdownFile.existsSync()) {
      markdownFile.createSync(recursive: true);
    }
    markdownFile.writeAsStringSync(
      markdownContent,
      flush: true,
    );
  }
}
