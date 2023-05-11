// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  final List<String> messages = <String>[
    'hello',
    '',
    // styles
    'this is a bold text'.bold(),
    'this is an italic text'.italic(),
    'this is a ${'demo'.bold()} ${'text'.underline()}',
    'multiple styles'.styled(const AnsiTextStyle(strikethrough: true, inverse: true)),
    '',
    // colors
    'text with background color'.withBackgroundColor(AnsiColor.cornflowerBlue),
    'text with foreground color'.withForegroundColor(AnsiColor.paleGreen1),
    'this is a colored text'.colored(foreground: AnsiColor.white, background: AnsiColor.chartreuse4),
    '',
    // AnsiText
    AnsiText('this is a demo text').toString(),
    AnsiText(
      'this is a demo ${'AnsiText'.strikethrough()}',
      textStyle: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.fuchsia,
      fixedWidth: 30,
      textAlignment: AnsiTextAlignment.center,
      backgroundColor: AnsiColor.lightGoldenrod4,
      // padding: AnsiPadding.vertical(1),
    ).toString(),
    '',
  ];

  for (final String message in messages) {
    print(message);
  }

  print(
    AnsiTable.fromList(
      <Object?>[
        true,
        242,
        3.0,
        'lalala',
        'this is a line',
      ],
      border: const AnsiBorder(
        style: AnsiBorderStyle.rounded,
        color: AnsiColor.fuchsia,
        type: AnsiBorderType.all,
      ),
      defaultAlignment: AnsiTextAlignment.center,
    ).toString(),
  );
}
