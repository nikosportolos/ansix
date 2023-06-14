import 'dart:math';

import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/alignment.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:ansix/src/widgets/text/text.dart';
import 'package:collection/collection.dart';

/// **AnsiTableColumn**
///
/// Represents a column of a table.
/// ///
/// - [data] The list of data of the column.
/// - [fixedWidth] If set will use this value as default width for all table cells.
/// - [headerTextTheme] The default [AnsiTextTheme] that will be used for styling the table header cells
///   that are not of type [AnsiText].
/// - [cellTextTheme] The default [AnsiTextTheme] that will be used for styling all table cells
///   that are not of type [AnsiText].
/// - [footerTextTheme] The default [AnsiTextTheme] that will be used for styling the table footer cells
///   that are not of type [AnsiText].
class AnsiTableColumn {
  AnsiTableColumn({
    required this.data,
    this.fixedWidth,
    this.headerTextTheme = const AnsiTextTheme(),
    this.cellTextTheme = const AnsiTextTheme(),
    this.footerTextTheme = const AnsiTextTheme(),
  }) {
    final List<String> list = <String>[];
    final List<AnsiTextAlignment> alignments = <AnsiTextAlignment>[];
    int maxRowWidth = fixedWidth ?? 0;

    for (int i = 0; i < data.length; i++) {
      final AnsiTextTheme defaultTextTheme = i == 0
          ? headerTextTheme
          : i == data.length - 1
              ? footerTextTheme
              : cellTextTheme;

      // TODO: Wrap line if AnsiText.fixedWidth is set
      final Object? object = data[i];
      final AnsiText text;
      if (object is AnsiText) {
        text = object;
      } else {
        if (object.toString().isNullOrEmpty) {
          list.addAll(<String>['']);
          alignments.add(defaultTextTheme.alignment);
          continue;
        }

        text = AnsiText.withTheme('$object', defaultTextTheme);
      }

      final List<String> lines = text.formattedText.trim().split(AnsiEscapeCodes.newLine);

      list.addAll(<String>[
        for (int i = 0; i < text.padding.top; i++) '',
        for (int i = 0; i < lines.length; i++)
          if (lines[i].isNotEmpty)
            AnsiText(
              lines[i],
              foregroundColor: text.foregroundColor,
              style: text.style,
              padding: AnsiPadding.only(
                right: text.padding.right,
                left: text.padding.left,
              ),
            ).formattedText,
        for (int i = 0; i < text.padding.bottom; i++) '',
      ]);

      maxRowWidth = max(
        lines.fold<int>(0, (int max, String s) {
          final int length = s.unformattedLength + text.padding.right + text.padding.left;
          return length > max ? length : max;
        }),
        maxRowWidth,
      );

      alignments.addAll(<AnsiTextAlignment>[
        for (int i = 0; i < text.padding.top; i++) defaultTextTheme.alignment,
        for (final String _ in lines) text.alignment,
        for (int i = 0; i < text.padding.bottom; i++) defaultTextTheme.alignment,
      ]);
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
  final AnsiTextTheme headerTextTheme;
  final AnsiTextTheme cellTextTheme;
  final AnsiTextTheme footerTextTheme;

  late final List<AnsiTableRow> rows;
  late final int width;
}
