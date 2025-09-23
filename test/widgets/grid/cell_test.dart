import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/grid/cell.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiGridCell', () {
    test('isMultiline', () {
      expect(
        const AnsiGridCell(width: 5, lines: <AnsiText>[]).isMultiline,
        false,
      );
      expect(
        AnsiGridCell(width: 5, lines: <AnsiText>[AnsiText('demo')]).isMultiline,
        false,
      );
      expect(
        AnsiGridCell(
          width: 5,
          lines: <AnsiText>[AnsiText('demo'), AnsiText('demo')],
        ).isMultiline,
        true,
      );
    });
  });
}
