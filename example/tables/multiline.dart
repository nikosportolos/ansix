import 'package:ansix/ansix.dart';

void main() {
  print(AnsiTable.fromMap(
    <Object, List<Object?>>{
      'Row 1'.red(): <Object?>[145, 342, 53, 3454, 655, 346],
      'Row 2': <Object?>[51, 235, 35, 434, 5354, 645, 75],
      AnsiText(
        'Row 3',
        style: const AnsiTextStyle(strikethrough: true),
        foregroundColor: AnsiColor.deepSkyBlue5,
      ): <Object?>['43', '234'.bold(), '5345435345345345'.red(), '34534', '234234'],
    },
    border: const AnsiBorder(
      type: AnsiBorderType.all,
      style: AnsiBorderStyle.rounded,
    ),
    orientation: AnsiOrientation.horizontal,
    keepSameWidth: true,
    fixedWidth: 20,
  ));
}
