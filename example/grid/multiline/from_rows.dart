// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:collection/collection.dart';

import 'mocks.dart';

void main() {
  final List<List<Object?>> rows = <List<Object?>>[
    <Object?>['#', 'Title', 'Release Year', 'IMDb Rate'],
    ...movies.mapIndexed((int i, Movie m) {
      return <Object>[i + 1, m.title, m.releaseYear, m.rate];
    }).toList(growable: false),
    <Object?>[
      'Average',
      '',
      '',
      movies.map((Movie m) => m.rate).toList(growable: false).average
    ],
  ];

  print('vertical'.underline());
  final AnsiGrid verticalGrid = AnsiGrid.fromRows(rows, theme: verticalTheme);
  print(verticalGrid);
  print('');

  print('horizontal'.underline());
  final AnsiGrid horizontalGrid =
      AnsiGrid.fromRows(rows, theme: horizontalTheme);
  print(horizontalGrid);
}
