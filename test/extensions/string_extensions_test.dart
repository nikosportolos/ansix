import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  group('withStyle', () {
    for (final AnsiStyle style in AnsiStyle.values) {
      test(style.name, () {
        final String text = 'This is a test message with [${style.name}] style';
        final String value = text.withStyle(style);
        // ignore: avoid_print
        print(value);
        expect(value, '${style.startEscapeCode}$text${style.endEscapeCode}');
      });
    }
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
          foreground: foregroundColor,
          background: backgroundColor,
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
          '${AnsiColor.black.foreground}$testMessage$reset',
        );
      });

      test('red', () {
        expect(
          testMessage.red(),
          '${AnsiColor.red.foreground}$testMessage$reset',
        );
      });

      test('green', () {
        expect(
          testMessage.green(),
          '${AnsiColor.green.foreground}$testMessage$reset',
        );
      });

      test('yellow', () {
        expect(
          testMessage.yellow(),
          '${AnsiColor.yellow.foreground}$testMessage$reset',
        );
      });

      test('blue', () {
        expect(
          testMessage.blue(),
          '${AnsiColor.blue.foreground}$testMessage$reset',
        );
      });

      test('fuchsia', () {
        expect(
          testMessage.fuchsia(),
          '${AnsiColor.fuchsia.foreground}$testMessage$reset',
        );
      });

      test('aqua', () {
        expect(
          testMessage.aqua(),
          '${AnsiColor.aqua.foreground}$testMessage$reset',
        );
      });

      test('white', () {
        expect(
          testMessage.white(),
          '${AnsiColor.white.foreground}$testMessage$reset',
        );
      });
    });
  });
}
