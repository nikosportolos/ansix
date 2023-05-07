import 'package:ansix/ansix.dart';

void main() {
  final AnsiTable table = AnsiTable.fromList(
    <Object?>[
      1,
      3,
      41123,
      'lalalala',
      AnsiText(
        'T A C H Y O N',
        foregroundColor: AnsiColor.aqua,
        textAlignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(top: 1, bottom: 2),
      ),
      AnsiText(
        'A fast and simple alternative for build_runner to generate dart code.',
        foregroundColor: AnsiColor.red3,
        textAlignment: AnsiTextAlignment.center,
        padding: AnsiPadding.only(right: 2, left: 4, bottom: 4),
      ),
    ],
    border: const AnsiBorder(
      type: AnsiBorderType.outside,
      style: AnsiBorderStyle.rounded,
      color: AnsiColor.aqua,
    ),
    defaultAlignment: AnsiTextAlignment.center,
  );

  // ignore: avoid_print
  print(table);
}
