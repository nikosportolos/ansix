import 'dart:math';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:collection/collection.dart';

class AnsiTable {
  AnsiTable({
    this.border = const AnsiBorder(),
    this.data = const <AnsiTableRow>[],
  }) : formattedText = (StringBuffer()
              ..writeAll(
                <String>[
                  for (int i = 0; i < data.length; i++)
                    data[i].print(
                      border: border,
                      isFirstLine: i == 0,
                      isLastLine: i == data.length - 1,
                    )
                ],
              ))
            .toString();

  final AnsiBorder border;
  final List<AnsiTableRow> data;
  final String formattedText;

  factory AnsiTable.fromList(
    final List<Object?> data, {
    final AnsiBorder border = const AnsiBorder(),
    final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  }) {
    final List<String> list = <String>[];
    final List<AnsiTextAlignment> alignments = <AnsiTextAlignment>[];
    int maxColumnWidth = 0;

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

    return AnsiTable(
      border: border,
      data: list.mapIndexed((int index, String text) {
        return AnsiTableRow(
          data: <AnsiText>[
            AnsiTableCell(
              text,
              width: maxColumnWidth,
              textAlignment: alignments[index],
            ),
          ],
        );
      }).toList(growable: false),
    );
  }

  @override
  String toString() {
    return formattedText;
  }
}
