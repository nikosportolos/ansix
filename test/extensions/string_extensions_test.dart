import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  group('addStyle', () {
    for (final AnsiStyle style in AnsiStyle.values) {
      test(style.name, () {
        final String text = 'This is a test message with [${style.name}] style';
        final String value = text.addStyle(style);
        // ignore: avoid_print
        print(value);
        expect(value, '${style.startEscapeCode}$text${style.endEscapeCode}');
      });
    }
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
