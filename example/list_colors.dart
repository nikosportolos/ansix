// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  void printColorSet(List<AnsiColor> colors) {
    final List<List<Object>> data = <List<Object>>[
      <Object>['Name', 'Hex', 'RGB', 'Sample'],
      ...colors.map((AnsiColor color) {
        return <Object>[
          color.name.withForegroundColor(color),
          color.hex.toString().withForegroundColor(color),
          color.rgb.toString().withForegroundColor(color),
          ''.padLeft(20).withBackgroundColor(color),
        ];
      }).toList(growable: false),
    ];

    print(
      AnsiGrid.fromRows(
        data,
        theme: AnsiGridTheme(
          overrideTheme: true,
          border: const AnsiBorder(
            style: AnsiBorderStyle.bold,
            type: AnsiBorderType.all,
          ),
          headerTextTheme: AnsiTextTheme(
            alignment: AnsiTextAlignment.center,
            padding: AnsiPadding.vertical(1),
            style: const AnsiTextStyle(bold: true),
            backgroundColor: AnsiColor.grey30,
            foregroundColor: AnsiColor.grey78,
          ),
          cellTextTheme: AnsiTextTheme(
            alignment: AnsiTextAlignment.center,
            padding: AnsiPadding.horizontal(2),
            fixedWidth: 20,
          ),
        ),
      ),
    );
  }

  printColorSet(AnsiColorSet.all);
}
