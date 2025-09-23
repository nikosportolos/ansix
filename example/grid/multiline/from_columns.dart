// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';
import 'package:collection/collection.dart';

import 'mocks.dart';

void main() {
  final List<List<Object?>> columns = <List<Object?>>[
    <Object?>['#', ...movies.mapIndexed((int i, Movie m) => i + 1), 'Average'],
    <Object?>['Title', ...movies.map((Movie m) => m.title)],
    <Object?>['Release Year', ...movies.map((Movie m) => m.releaseYear)],
    <Object?>[
      'IMDb Rate',
      ...movies.map((Movie m) => m.rate),
      movies.map((Movie m) => m.rate).toList(growable: false).average,
    ],
  ];

  print('vertical'.underline());
  final AnsiGrid verticalGrid = AnsiGrid.fromColumns(
    columns,
    theme: verticalTheme,
  );
  print(verticalGrid);
  print('');

  print('horizontal'.underline());
  final AnsiGrid horizontalGrid = AnsiGrid.fromColumns(
    columns,
    theme: horizontalTheme,
  );
  print(horizontalGrid);
}
