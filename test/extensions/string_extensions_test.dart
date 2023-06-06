import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('withStyle', () {
    for (final AnsiStyle style in AnsiStyle.values) {
      test(style.name, () {
        final String text = 'This is a test message with [${style.name}] style';
        final String value = text.withStyle(style);
        expect(value, '${style.startEscapeCode}$text${style.endEscapeCode}');
      });
    }
  });

  group('remove ANSI formatting', () {
    test('unformatted', () {
      const String text = 'this is a demo text';
      expect(text.bold().unformatted, text);
      expect(text.red().unformatted, text);
    });
    test('unformattedLength', () {
      const String text = 'this is a demo text';
      expect(text.bold().unformattedLength, text.length);
      expect(text.red().unformattedLength, text.length);
      expect('[38;5;209mThis is a text with vertical padding[0m'.unformattedLength, 36);
    });
  });

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

  group('colored', () {
    const String testMessage = 'This is a test message.';
    const AnsiColor foregroundColor = AnsiColor.deepSkyBlue4;
    const AnsiColor backgroundColor = AnsiColor.cyan3;

    test('withForegroundColor', () {
      expect(
        testMessage.withForegroundColor(foregroundColor),
        '\x1B[38;5;25m$testMessage\x1B[0m',
      );
    });

    test('withBackgroundColor', () {
      expect(
        testMessage.withBackgroundColor(backgroundColor),
        '\x1B[48;5;43m$testMessage\x1B[0m',
      );
    });

    test('colored', () {
      expect(
        testMessage.colored(
          foreground: foregroundColor,
          background: backgroundColor,
        ),
        '\x1B[38;5;25m\x1B[48;5;43m$testMessage\x1B[0m',
      );
    });

    test('coloredRgb', () {
      expect(
        testMessage.coloredRgb(
          foreground: const Rgb(0, 95, 175),
          background: const Rgb(0, 215, 175),
        ),
        '\x1B[38;2;0;95;175m\x1B[48;2;0;215;175m$testMessage\x1B[0m',
      );
    });
  });

  group('shortcuts', () {
    const String testMessage = 'This is a test message';
    group('styles', () {
      test('bold', () {
        expect(
          testMessage.bold(),
          '${AnsiStyle.bold.startEscapeCode}$testMessage${AnsiStyle.bold.endEscapeCode}',
        );
      });

      test('italic', () {
        expect(
          testMessage.italic(),
          '${AnsiStyle.italic.startEscapeCode}$testMessage${AnsiStyle.italic.endEscapeCode}',
        );
      });

      test('underline', () {
        expect(
          testMessage.underline(),
          '${AnsiStyle.underline.startEscapeCode}$testMessage${AnsiStyle.underline.endEscapeCode}',
        );
      });

      test('strikethrough', () {
        expect(
          testMessage.strikethrough(),
          '${AnsiStyle.strikethrough.startEscapeCode}$testMessage${AnsiStyle.strikethrough.endEscapeCode}',
        );
      });
    });

    group('colors', () {
      test('black', () {
        expect(
          testMessage.black(),
          '${AnsiColor.black.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('red', () {
        expect(
          testMessage.red(),
          '${AnsiColor.red.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('green', () {
        expect(
          testMessage.green(),
          '${AnsiColor.green.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('yellow', () {
        expect(
          testMessage.yellow(),
          '${AnsiColor.yellow.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('blue', () {
        expect(
          testMessage.blue(),
          '${AnsiColor.blue.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('fuchsia', () {
        expect(
          testMessage.fuchsia(),
          '${AnsiColor.fuchsia.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('aqua', () {
        expect(
          testMessage.aqua(),
          '${AnsiColor.aqua.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });

      test('white', () {
        expect(
          testMessage.white(),
          '${AnsiColor.white.foreground}$testMessage${AnsiEscapeCodes.reset}',
        );
      });
    });
  });
}
