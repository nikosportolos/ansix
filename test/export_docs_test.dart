import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:path/path.dart';
import 'package:test/test.dart';

void main() {
  group('Validate generated docs & assets', () {
    group('Validate generated color images', () {
      final String basePath = join('assets', 'images', 'colors');

      test(basePath, () {
        final Directory dir = Directory(join(Directory.current.path, basePath));
        expect(
          dir.listSync(recursive: true).length,
          AnsiColorSet.all.length,
        );
      });

      group('colors', () {
        for (final AnsiColor color in AnsiColorSet.all) {
          final String filename = '${color.name.toLowerCase().replaceAll(' ', '_')}.png';
          final String filepath = join(
            Directory.current.path,
            basePath,
            filename,
          );

          test(filename, () {
            expect(File(filepath).existsSync(), true);
          });
        }
      });
    });

    group('Validate generated color markdown files', () {
      final String basePath = join('docs', 'colors');

      test(basePath, () {
        final Directory dir = Directory(join(Directory.current.path, basePath));
        expect(
          dir.listSync(recursive: true).length,
          AnsiColorSet.map.entries.length,
        );
      });

      group('color sets', () {
        for (final MapEntry<String, List<AnsiColor>> set in AnsiColorSet.map.entries) {
          final String filename = '${set.key.toLowerCase()}.md';
          test(filename, () {
            expect(File(join(basePath, filename)).existsSync(), true);
          });
        }
      });
    });
  });
}
