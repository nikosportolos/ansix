// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('Validate color sets', () {
    validateColorSet(
      name: 'System colors',
      colorSet: AnsiColor.system,
      expectedCount: 16,
      testRgb: false,
    );

    validateColorSet(
      name: 'Extended colors',
      colorSet: AnsiColor.extended,
      expectedCount: 209,
    );

    validateColorSet(
      name: 'Greyscale colors',
      colorSet: AnsiColor.greyscale,
      expectedCount: 31,
      testRgb: false,
    );

    validateColorSet(
      name: 'All colors',
      colorSet: AnsiColor.all,
      expectedCount: 257,
      testRgb: false,
    );
  });
}

void validateColorSet({
  required final String name,
  required final List<AnsiColor> colorSet,
  required final int expectedCount,
  final bool testRgb = true,
}) {
  group(name, () {
    test('Valid color set count', () {
      expect(colorSet.length, expectedCount);
    });
    if (testRgb) {
      group('Calculate RGB value', () {
        for (final AnsiColor color in colorSet) {
          test('$color', () {
            print(AnsiText(
              '$color - ${color.rgb} - ${color.value}',
              foregroundColor: color,
            ));

            expect(
              color.value,
              color.rgb?.value,
            );
          });
        }
      });
    }
  });
}
