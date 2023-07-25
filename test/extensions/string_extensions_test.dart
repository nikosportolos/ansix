// ignore_for_file: unnecessary_nullable_for_final_variable_declarations

import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('String extensions', () {
    group('escape new lines', () {
      test('removeNewLines', () {
        expect('\n\nthis is \na demo text\n\n'.removeNewLines, 'this is a demo text');
      });
      test('lengthWithoutNewLines', () {
        expect('\n\nthis is \na demo text\n\n'.lengthWithoutNewLines, 19);
      });
    });

    group('escape whitespaces', () {
      test('removeNewLines', () {
        expect('this is a demo text'.removeWhitespaces, 'thisisademotext');
      });
    });

    void validateLines(final List<String> actualLines, final List<String> expectedLines, final int length) {
      expect(actualLines, expectedLines);
      for (final String line in actualLines) {
        expect(line.length, length);
      }
    }

    group('wrap text', () {
      test('wrap', () {
        validateLines('this is a demo text with rounded borders'.splitEvery(20, splitWords: false, lineBreak: false),
            <String>['this is a demo text ', 'with rounded borders'], 20);
      });

      test('split words', () {
        validateLines('this is a demo text with rounded borders'.splitEvery(5, splitWords: true, lineBreak: false),
            <String>['this ', 'is a ', 'demo ', 'text ', 'with ', 'round', 'ed bo', 'rders'], 5);
      });

      test('line break', () {
        validateLines('this is a demo text with rounded borders'.splitEvery(10, splitWords: true, lineBreak: true),
            <String>['this is a ', 'demo text ', 'with roun-', 'ded borde-', 'r         '], 10);
      });
    });

    group('isNullOrEmpty', () {
      test('Returns true if the string is null or empty', () {
        const String? nullText = null;
        const String? emptyText = '';
        const String? text = 'text';

        expect(nullText.isNullOrEmpty, true);
        expect(emptyText.isNullOrEmpty, true);
        expect(text.isNullOrEmpty, false);
      });
    });

    group('alignCenterForWidth', () {
      test('even char length', () {
        const String text = 'This is a test text.';

        expect(text.alignCenterForWidth(text.length), (0, 0));
        expect(text.alignCenterForWidth(30), (5, 5));
        expect(text.alignCenterForWidth(50), (15, 15));
      });
      test('odd char length', () {
        const String text = 'This is a test text';

        expect(text.alignCenterForWidth(text.length), (0, 0));
        expect(text.alignCenterForWidth(30), (5, 6));
        expect(text.alignCenterForWidth(50), (15, 16));
      });
    });
  });
}
