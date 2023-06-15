import 'package:ansix/src/core/escape_codes.dart';
import 'package:ansix/src/core/extensions/extensions.dart';
import 'package:ansix/src/theme/border/border.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/theme.dart';

/// **AnsiBorderBuilder**
///
/// This class is responsible for building a string representation of table row using the given [AnsiBorder].
class AnsiBorderBuilder {
  const AnsiBorderBuilder();

  String print({
    required final AnsiBorder border,
    required final List<AnsiTableCell> data,
    required final int index,
    required final int total,
    required final bool transparent,
  }) {
    final BorderBuilderTheme theme = BorderBuilderTheme.fromBorder(border);
    final StringBuffer buffer = StringBuffer();

    final bool isFirstLine = index == 0;
    final bool isLastLine = index == total - 1;

    String getBorder(final AnsiRowBorderSet set) {
      final StringBuffer buffer = StringBuffer()
        ..writeAll(
          <String>[
            if (!transparent) AnsiEscapeCodes.reset,
            set.start,
            for (int i = 0; i < data.length; i++) ...<String>[
              set.line * (data[i].width),
              if (i != data.length - 1) set.separator,
            ],
            set.end
          ],
        );

      return buffer.toString().withForegroundColor(border.color);
    }

    if (isFirstLine && !theme.topBorder.isEmpty) {
      buffer
        ..write(getBorder(theme.topBorder))
        ..writeln();
    }

    if (!transparent) {
      buffer.write(AnsiEscapeCodes.reset);
    }

    buffer
      ..writeWithForegroundColor(theme.textLine.start, border.color)
      ..write(data.join(theme.textLine.separator.colored(foreground: border.color)))
      ..writeWithForegroundColor(theme.textLine.end, border.color);

    // final List<List<String>> lines = data.map((AnsiText e) {
    //   return e.formattedText.split(AnsiEscapeCodes.newLine);
    // }).toList(growable: false);
    //
    // buffer.writeWithForegroundColor(theme.textLine.start, border.color);
    // for (int i = 0; i < lines.length; i++) {
    //   final List<String> cells = lines[i];
    //   for (int j = 0; j < cells.length; j++) {
    //     final String cell = cells[j];
    //     buffer
    //       ..write(cell)
    //       ..writeWithForegroundColor(
    //         j == cells.length - 1 ? theme.textLine.separator : theme.textLine.end,
    //         border.color,
    //       );
    //   }
    // }

    if (isLastLine && theme.bottomBorder.isEmpty) {
    } else {
      buffer.writeln();
    }

    if (!isLastLine) {
      if (!theme.middleBorder.isEmpty) {
        buffer
          ..write(getBorder(theme.middleBorder))
          ..writeln();
      }
    } else {
      if (!theme.bottomBorder.isEmpty) {
        buffer.write(getBorder(theme.bottomBorder));
      }
    }

    return buffer.toString();
  }
}
