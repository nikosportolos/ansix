import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/table/builder/builder.dart';
import 'package:ansix/src/widgets/text/text.dart';

class AnsiTableRow {
  AnsiTableRow({
    this.data = const <AnsiText>[],
  });

  final List<AnsiText> data;

  String print({
    required final AnsiBorder border,
    required final bool isFirstLine,
    required final bool isLastLine,
  }) {
    final AnsiTableBuilder builder = AnsiTableBuilder.fromBorderType(border.type);
    builder.data = data;
    builder.border = border;
    builder.isFirstLine = isFirstLine;
    builder.isLastLine = isLastLine;
    return builder.toString();
  }
}
