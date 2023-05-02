import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/row/row.dart';

class AnsiFixedTable {
  AnsiFixedTable({
    final AnsiBorder? border,
    required this.header,
    this.data = const <AnsiTableRow>[],
    this.footer,
  }) : border = border ?? AnsiBorder();

  final AnsiBorder border;
  final AnsiTableRow header;
  final List<AnsiTableRow> data;
  final AnsiTableRow? footer;

  @override
  String toString() {
    final List<AnsiTableRow> rows = <AnsiTableRow>[
      header,
      ...data,
      if (footer != null) footer!,
    ];

    return (StringBuffer()
          ..writeAll(<String>[
            for (int i = 0; i < rows.length; i++)
              rows[i].print(
                border: border,
                isFirstLine: i == 0,
                isLastLine: i == rows.length - 1,
              )
          ]))
        .toString();
  }
}
