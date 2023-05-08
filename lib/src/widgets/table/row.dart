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
    switch (border.type) {
      case AnsiBorderType.all:
        return AllBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.header:
        return HeaderBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.inside:
        return InsideBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.insideHorizontal:
        return InsideHorizontalBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.insideVertical:
        return InsideVerticalBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.none:
        return NoBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.outside:
        return OutsideBorderTableBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();
    }
  }
}
