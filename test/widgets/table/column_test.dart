import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/column.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiTableColumn', () {
    test('string width', () {
      expect(AnsiTableColumn(data: <Object?>['test', 'test 1']).width, 6);
    });

    test('AnsiText width', () {
      expect(AnsiTableColumn(data: <Object?>['test', 'test 1', AnsiText('this is a test message')]).width, 22);
    });
  });
}
