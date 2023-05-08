import 'package:ansix/ansix.dart';

void main() {
  final AnsiTable table = AnsiTable.fromList(
    <Object?>[
      AnsiText(
        'A N S I X',
        foregroundColor: AnsiColor.aqua,
        textAlignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(top: 1, bottom: 1),
      ),
      AnsiText(
        'An extended ANSI library that provides tools '
        'and extensions for Dart & Flutter projects',
        foregroundColor: AnsiColor.red3,
        textAlignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(right: 2, left: 2, bottom: 1),
      ),
    ],
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
      color: AnsiColor.aqua,
    ),
    defaultAlignment: AnsiTextAlignment.center,
  );

  // ignore: avoid_print
  print(table);
}
