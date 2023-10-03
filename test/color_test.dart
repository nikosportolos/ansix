import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/color/utils.dart';
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

  group('Calculate HEX value', () {
    for (final AnsiColor color in AnsiColorSet.all) {
      test('$color', () {
        expect(color.hex, color.rgb?.toHex());
      });
    }
  });

  group('Calculate RGB value', () {
    for (final AnsiColor color in AnsiColorSet.extended) {
      test('$color', () {
        expect(color.value, color.rgb?.value);
      });
    }
  });

  group('Calculate greyscale RGB value', () {
    for (final AnsiColor color in AnsiColorSet.greyscale) {
      test('$color', () {
        expect(
          ColorUtils.greyscaleRgbTo8BitColor(color.rgb!.red),
          color.value,
        );
      });
    }
  });

  group('HSL', () {
    const Hsl hsl = Hsl(100, 100, 100);
    test('test string representations', () {
      expect(hsl.toString(), '(100.0°, 100%, 100%)');
      expect(hsl.hueString, '100.0°');
      expect(hsl.lightnessString, '100%');
      expect(hsl.saturationString, '100%');
    });
  });

  group('lightness', () {
    test('lightness', () {
      expect(AnsiColor.white.lightness, greaterThan(50));
      expect(AnsiColor.black.lightness, lessThan(50));
      expect(AnsiColor.white.rgb!.relativeLuminance, greaterThan(50));
      expect(AnsiColor.black.rgb!.relativeLuminance, lessThan(50));
      expect(AnsiColor.white.hsl!.lightness, greaterThan(50));
      expect(AnsiColor.black.hsl!.lightness, lessThan(50));

      expect(AnsiColor.fromRgb(const Rgb(255, 255, 255)).lightness,
          greaterThan(50));
      expect(AnsiColor.fromRgb(const Rgb(0, 0, 0)).lightness, lessThan(50));
    });
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
