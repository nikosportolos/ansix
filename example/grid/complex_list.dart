import 'package:ansix/ansix.dart';

void main() {
  final AnsiGrid grid = AnsiGrid.single(
    <Object?>[
      AnsiText(
        'A N S I X',
        foregroundColor: AnsiColor.aqua,
        alignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(top: 1, bottom: 1),
      ),
      AnsiText(
        'An extended ANSI library that provides tools '
        'and extensions for Dart & Flutter projects',
        foregroundColor: AnsiColor.red3,
        alignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(right: 2, left: 2, bottom: 1),
      ),
    ],
    theme: const AnsiGridTheme(
      overrideTheme: true,
      border: AnsiBorder(
        type: AnsiBorderType.all,
        style: AnsiBorderStyle.rounded,
        color: AnsiColor.aqua,
      ),
    ),
  );

  // ignore: avoid_print
  print(grid);
}
