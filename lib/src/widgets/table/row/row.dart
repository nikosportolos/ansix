import 'package:ansix/src/theme/theme.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row/builder/builder.dart';

class AnsiTableRow {
  AnsiTableRow({
    this.data = const <AnsiTableCell>[],
  });

  final List<AnsiTableCell> data;

  String print({
    required final AnsiBorder border,
    required final bool isFirstLine,
    required final bool isLastLine,
  }) {
    switch (border.type) {
      case AnsiBorderType.all:
        return AllBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.header:
        return HeaderBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.inside:
        return InsideBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.insideHorizontal:
        return InsideHorizontalBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.insideVertical:
        return InsideVerticalBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.none:
        return NoneBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();

      case AnsiBorderType.outside:
        return OutsideBorderRowBuilder(
          data: data,
          border: border,
          isFirstLine: isFirstLine,
          isLastLine: isLastLine,
        ).toString();
    }
  }
}
