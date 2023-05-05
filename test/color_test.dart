import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('Validate color', () {
    validateColorSet(
      colorSetName: 'System colors',
      colorSet: AnsiColorSet.system,
      expectedCount: 16,
    );

    validateColorSet(
      colorSetName: 'Extended colors',
      colorSet: AnsiColorSet.extended,
      expectedCount: 216,
    );

    validateColorSet(
      colorSetName: 'Greyscale colors',
      colorSet: AnsiColorSet.greyscale,
      expectedCount: 24,
    );

    validateColorSet(
      colorSetName: 'All colors',
      colorSet: AnsiColorSet.all,
      expectedCount: 256,
    );
  });

  group('Calculate RGB value', () {
    for (final AnsiColor color in AnsiColorSet.extended) {
      test('$color', () {
        // ignore: avoid_print
        print('$color - ${color.rgb} - ${color.value}'.colored(foreground: color));
        expect(color.value, color.rgb?.value);
      });
    }
  });
}

void validateColorSet({
  required final String colorSetName,
  required final List<AnsiColor> colorSet,
  required final int expectedCount,
}) {
  group(colorSetName, () {
    test('Valid color set count', () {
      expect(colorSet.length, expectedCount);
    });
  });
}
