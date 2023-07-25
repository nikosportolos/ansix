import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  const String demoText = 'This is a test message';
  const int spaces = 10;
  const int lines = 2;

  void testAnsiPadding(
    final AnsiPadding padding, {
    final int expectedTopLines = 0,
    final int expectedBottomLines = 0,
    final int expectedStartSpaces = 0,
    final int expectedEndSpaces = 0,
  }) {
    expect(
      AnsiText(demoText, padding: padding).formattedText,
      '${AnsiEscapeCodes.newLine * expectedTopLines}'
      '${' ' * expectedStartSpaces}'
      '$demoText'
      '${' ' * expectedEndSpaces}'
      '${AnsiEscapeCodes.newLine * expectedBottomLines}',
    );
  }

  group('AnsiPadding', () {
    test('none', () {
      testAnsiPadding(
        AnsiPadding.none,
        expectedTopLines: 0,
        expectedBottomLines: 0,
        expectedStartSpaces: 0,
        expectedEndSpaces: 0,
      );
    });

    test('only', () {
      testAnsiPadding(
        AnsiPadding.only(top: 1, bottom: 2, left: 3, right: 4),
        expectedTopLines: 1,
        expectedBottomLines: 2,
        expectedStartSpaces: 3,
        expectedEndSpaces: 4,
      );
    });

    test('symmetric', () {
      testAnsiPadding(
        AnsiPadding.symmetric(vertical: lines, horizontal: spaces),
        expectedTopLines: lines,
        expectedBottomLines: lines,
        expectedStartSpaces: spaces,
        expectedEndSpaces: spaces,
      );
    });

    test('horizontal', () {
      testAnsiPadding(
        AnsiPadding.horizontal(spaces),
        expectedStartSpaces: spaces,
        expectedEndSpaces: spaces,
      );
    });

    test('vertical', () {
      testAnsiPadding(
        AnsiPadding.vertical(lines),
        expectedTopLines: lines,
        expectedBottomLines: lines,
      );
    });

    group('getters', () {
      test('horizontalPadding ', () {
        expect(AnsiPadding.only(left: 1, right: 5).horizontalPadding, 6);
        expect(AnsiPadding.horizontal(2).horizontalPadding, 4);
        expect(AnsiPadding.vertical(2).horizontalPadding, 0);
      });
      test('verticalPadding ', () {
        expect(AnsiPadding.only(left: 1, right: 5, top: 1, bottom: 5).verticalPadding, 6);
        expect(AnsiPadding.horizontal(2).verticalPadding, 0);
        expect(AnsiPadding.vertical(2).verticalPadding, 4);
      });
    });

    group('operators', () {
      test('+ operator', () {
        expect(AnsiPadding.none + AnsiPadding.none, AnsiPadding.none);
        expect(AnsiPadding.vertical(3) + AnsiPadding.vertical(3), AnsiPadding.vertical(6));
        expect(
          AnsiPadding.vertical(2) + AnsiPadding.horizontal(3),
          AnsiPadding.only(top: 2, bottom: 2, right: 3, left: 3),
        );
      });

      test('== operator', () {
        expect(AnsiPadding.none == AnsiPadding.none, true);
        expect(AnsiPadding.none.hashCode != 0, true);
        expect(AnsiPadding.vertical(3) == AnsiPadding.vertical(3), true);
        expect(AnsiPadding.vertical(2) == AnsiPadding.horizontal(3), false);
      });
    });
  });
}
