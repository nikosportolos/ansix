import 'dart:math';

import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/alignment.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:ansix/src/widgets/text/text.dart';
import 'package:collection/collection.dart';

class AnsiTableColumn {
  AnsiTableColumn({
    required this.data,
    this.fixedWidth,
    this.defaultAlignment = AnsiTextAlignment.left,
  }) {
    final List<String> list = <String>[];
    final List<AnsiTextAlignment> alignments = <AnsiTextAlignment>[];
    int maxColumnWidth = fixedWidth ?? 0;

    for (final Object? object in data) {
      if (object is AnsiText) {
        maxColumnWidth = max(object.width, maxColumnWidth);
        list.addAll(object.formattedText.split(newLine));

        alignments.addAll(<AnsiTextAlignment>[
          for (int i = 0; i < object.padding.top; i++) defaultAlignment,
          object.textAlignment,
          for (int i = 0; i < object.padding.bottom; i++) defaultAlignment,
        ]);

        // TODO: Wrap line if AnsiText.fixedWidth is set
      } else {
        final String text = object.toString();
        maxColumnWidth = max(text.length, maxColumnWidth);
        final List<String> temp = text.split(newLine);
        list.addAll(temp);

        alignments.addAll(<AnsiTextAlignment>[
          for (final String _ in temp) defaultAlignment,
        ]);
      }
    }

    width = maxColumnWidth;
    rows = list.mapIndexed((int index, String text) {
      return AnsiTableRow(
        data: <AnsiText>[
          AnsiTableCell(
            text,
            width: maxColumnWidth,
            textAlignment: alignments[index],
          ),
        ],
      );
    }).toList(growable: false);
  }

  final List<Object?> data;
  final int? fixedWidth;
  final AnsiTextAlignment defaultAlignment;

  late final List<AnsiTableRow> rows;
  late final int width;
}
