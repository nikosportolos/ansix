import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiTextTheme', () {
    test('hasColors', () {
      expect(
        const AnsiTextTheme(
          foregroundColor: AnsiColor.salmon1,
          backgroundColor: AnsiColor.aquamarine1,
        ).hasColors,
        true,
      );
      expect(
        const AnsiTextTheme(foregroundColor: AnsiColor.salmon1).hasColors,
        true,
      );
      expect(
        const AnsiTextTheme(backgroundColor: AnsiColor.salmon1).hasColors,
        true,
      );
      expect(
        const AnsiTextTheme(backgroundColor: AnsiColor.none).hasColors,
        false,
      );
      expect(
        const AnsiTextTheme(foregroundColor: AnsiColor.none).hasColors,
        false,
      );
      expect(
        const AnsiTextTheme(
          foregroundColor: AnsiColor.none,
          backgroundColor: AnsiColor.none,
        ).hasColors,
        false,
      );
    });
  });
}
