import 'package:ansix/src/system/legacy_console_mode.dart';
import 'package:test/test.dart';

void main() {
  group('Windows console legacy mode', () {
    test('isEnabled', () {
      expect(LegacyConsoleMode.enabled.isEnabled, true);
      expect(LegacyConsoleMode.unknown.isEnabled, false);
      expect(LegacyConsoleMode.disabled.isEnabled, false);
    });
  });
}
