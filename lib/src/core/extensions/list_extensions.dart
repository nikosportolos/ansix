import 'dart:math';

extension ListX<T> on List<T> {
  bool get hasOne => length == 1;

  bool get hasMany => length > 1;
}

extension ObjectListX on List<List<Object?>> {
  List<List<Object?>> transpose() {
    final int numRows = length;
    final int numCols = fold(0, (int max, List<Object?> row) {
      return row.length > max ? row.length : max;
    });

    final List<List<Object?>> result = List<List<Object?>>.generate(numCols, (
      int index,
    ) {
      return List<Object?>.filled(numRows, '');
    });

    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < this[i].length; j++) {
        result[j][i] = this[i][j];
      }
    }

    return result;
  }

  int get objectCount =>
      fold<int>(0, (int m, List<Object?> col) => max(m, col.length));
}
