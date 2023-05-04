import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:path/path.dart';

final String baseProjectPath = Directory.current.parent.parent.path;
const String imageBaseUrl = 'https://raw.githubusercontent.com/nikosportolos/ansix/main';

final String colorImagePath = join('assets', 'images', 'colors');
final String colorImageExportPath = join(baseProjectPath, colorImagePath);
final String colorImageGithubPath = join(imageBaseUrl, colorImagePath);

final String docsPath = join(baseProjectPath, 'docs');
final String colorDocsPath = join(docsPath, 'colors');

extension AnsiColorX on AnsiColor {
  String get _colorName => name.toLowerCase().replaceAll(' ', '_');
  String get pngFilename => '$_colorName.png';
}
