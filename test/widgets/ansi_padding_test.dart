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
  });
}
