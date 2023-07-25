import 'package:ansix/src/core/extensions/list_extensions.dart';
import 'package:test/test.dart';

void main() {
  group('List extensions', () {
    test('hasMany', () {
      expect(<int>[].hasMany, false);
      expect(<int>[1].hasMany, false);
      expect(<int>[1, 2].hasMany, true);
    });

    test('hasOne', () {
      expect(<int>[].hasOne, false);
      expect(<int>[1].hasOne, true);
      expect(<int>[1, 2].hasOne, false);
    });

    test('transpose', () {
      final List<List<int>> listHorizontal = <List<int>>[
        <int>[0, 1, 2, 3, 4],
        <int>[5, 6, 7, 8, 9],
        <int>[10, 11, 12, 13, 14]
      ];

      final List<List<int>> listVertical = <List<int>>[
        <int>[0, 5, 10],
        <int>[1, 6, 11],
        <int>[2, 7, 12],
        <int>[3, 8, 13],
        <int>[4, 9, 14],
      ];

      expect(listHorizontal.transpose(), listVertical);
      expect(listVertical.transpose(), listHorizontal);
    });
  });
}
