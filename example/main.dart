// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();

  // String extensions
  print('This is a bold text'.bold());
  print('This is a text with red foreground color'.red());

  final StringBuffer buffer = StringBuffer()
    ..writeWithForegroundColor('Hello ', AnsiColor.blue)
    ..writeStyled(
      'AnsiX ',
      textStyle: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.aquamarine2,
    )
    ..writeWithForegroundColor('!', AnsiColor.red)
    ..writeWithForegroundColor('!', AnsiColor.green)
    ..writeWithForegroundColor('!', AnsiColor.blue);

  // StringBuffer extensions
  print(buffer);

  print('');

  final Map<String, dynamic> json = <String, dynamic>{
    'field1': 'value',
    'field2': 3.0,
    'field3': true,
  };

  print('');
  print('Json'.underline().colored(background: AnsiColor.darkSeaGreen, foreground: AnsiColor.black));
  AnsiX.printJson(json, foreground: AnsiColor.cadetBlue);

  print('');
  print('TreeView'.bold().colored(foreground: AnsiColor.deepSkyBlue5));
  AnsiX.printTreeView(json, theme: AnsiTreeViewTheme.$default());

  print('Grid'.italic().colored(background: AnsiColor.darkBlue));
  print(
    AnsiGrid.fromColumns(
      <List<Object?>>[
        <Object?>['Name', AnsiColor.red.name, AnsiColor.green.name, AnsiColor.blue.name],
        <Object?>['Hex', AnsiColor.red.hex, AnsiColor.green.hex, AnsiColor.blue.hex],
        <Object?>['RGB', AnsiColor.red.rgb, AnsiColor.green.rgb, AnsiColor.blue.rgb],
      ],
      theme: const AnsiGridTheme(
        border: AnsiBorder(
          style: AnsiBorderStyle.square,
          type: AnsiBorderType.all,
        ),
        cellTextTheme: AnsiTextTheme(
          fixedWidth: 15,
        ),
      ),
    ),
  );
}
