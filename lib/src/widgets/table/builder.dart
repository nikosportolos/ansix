import 'package:ansix/src/core/extensions/extensions.dart';
import 'package:ansix/src/theme/border/border.dart';
import 'package:ansix/src/widgets/table/theme.dart';
import 'package:ansix/src/widgets/text/text.dart';

/// **AnsiBorderBuilder**
///
/// This class is responsible for building a string representation of table row using the given [AnsiBorder].
class AnsiBorderBuilder {
  const AnsiBorderBuilder();

  String print({
    required final AnsiBorder border,
    required final List<AnsiText> data,
    required final int index,
    required final int total,
  }) {
    final BorderBuilderTheme theme = BorderBuilderTheme.fromBorder(border);
    final StringBuffer buffer = StringBuffer();

    final bool isFirstLine = index == 0;
    final bool isLastLine = index == total - 1;

    String getBorder(final AnsiRowBorderSet set) {
      final StringBuffer buffer = StringBuffer();
      buffer.writeWithForegroundColor(set.start, border.color);

      for (int i = 0; i < data.length; i++) {
        buffer.writeWithForegroundColor(
          set.line * (data[i].width),
          border.color,
        );
        if (i != data.length - 1) {
          buffer.writeWithForegroundColor(set.separator, border.color);
        }
      }

      buffer.writeWithForegroundColor(set.end, border.color);

      return buffer.toString();
    }

    if (isFirstLine && !theme.topBorder.isEmpty) {
      buffer
        ..write(getBorder(theme.topBorder))
        ..writeln();
    }

    buffer
      ..writeWithForegroundColor(theme.textLine.start, border.color)
      ..write(data.join(theme.textLine.separator.colored(foreground: border.color)))
      ..writeWithForegroundColor(theme.textLine.end, border.color);

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
