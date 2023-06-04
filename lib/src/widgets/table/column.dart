import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:collection/collection.dart';

/// **AnsiTableColumn**
///
/// Represents a column of a table.
class AnsiTableColumn {
  AnsiTableColumn({
    required this.data,
    this.fixedWidth,
    this.defaultAlignment = AnsiTextAlignment.left,
  }) {
    final List<String> list = <String>[];
    final List<AnsiTextAlignment> alignments = <AnsiTextAlignment>[];
    int maxRowWidth = fixedWidth ?? 0;

    for (final Object? object in data) {
      if (object is AnsiText) {
        final List<String> lines = object.formattedText.trim().split(AnsiEscapeCodes.newLine);

        list.addAll(<String>[
          for (int i = 0; i < object.padding.top; i++) '',
          for (int i = 0; i < lines.length; i++)
            if (lines[i].isNotEmpty)
              AnsiText(
                lines[i],
                foregroundColor: object.foregroundColor,
                style: object.style,
                padding: AnsiPadding.only(
                  right: object.padding.right,
                  left: object.padding.left,
                ),
              ).formattedText,
          for (int i = 0; i < object.padding.bottom; i++) '',
        ]);

        maxRowWidth = max(
          lines.fold<int>(0, (int max, String s) {
            final int length = s.unformattedLength + object.padding.right + object.padding.left;
            return length > max ? length : max;
          }),
          maxRowWidth,
        );

        alignments.addAll(<AnsiTextAlignment>[
          for (int i = 0; i < object.padding.top; i++) defaultAlignment,
          for (final String _ in lines) object.alignment,
          for (int i = 0; i < object.padding.bottom; i++) defaultAlignment,
        ]);

        // TODO: Wrap line if AnsiText.fixedWidth is set
      } else {
        final String text = object.toString();
        final List<String> lines = text.split(AnsiEscapeCodes.newLine);
        list.addAll(lines);

        maxRowWidth = max(
          lines.fold<int>(0, (int max, String s) {
            final int length = s.unformattedLength;
            return length > max ? length : max;
          }),
          maxRowWidth,
        );

        alignments.addAll(<AnsiTextAlignment>[
          for (final String _ in lines) defaultAlignment,
        ]);
      }
    }

    width = maxRowWidth;
    rows = list.mapIndexed((int index, String text) {
      return AnsiTableRow(
        data: <AnsiText>[
          AnsiTableCell(
            text,
            width: maxRowWidth,
            alignment: alignments[index],
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
