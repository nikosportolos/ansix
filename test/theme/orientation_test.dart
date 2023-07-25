import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiOrientation', () {
    test('getters smoke test', () {
      expect(AnsiOrientation.vertical.isVertical, true);
      expect(AnsiOrientation.vertical.isHorizontal, false);

      expect(AnsiOrientation.horizontal.isVertical, false);
      expect(AnsiOrientation.horizontal.isHorizontal, true);
    });
  });
}
