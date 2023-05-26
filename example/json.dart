// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  const AnsiBorder border = AnsiBorder(
    type: AnsiBorderType.all,
    style: AnsiBorderStyle.rounded,
  );

  String getHeaderText(final String text) {
    return AnsiTable.fromList(
      <Object>[text.bold()],
      border: border,
      fixedWidth: 30,
      defaultAlignment: AnsiTextAlignment.center,
    ).toString();
  }

  const Map<String, dynamic> jsonMap = <String, dynamic>{
    'id': '12345',
    'name': 'AnsiX',
    'dependencies': <String>[
      'collection',
      'data_class_plugin',
      'meta',
      'path',
    ],
  };

  const JsonEncoder encoder = JsonEncoder.withIndent('  ');

  final String json = encoder.convert(jsonMap);
  final String coloredJson = json.withForegroundColor(AnsiColor.lightSkyBlue1);

  final StringBuffer buffer = StringBuffer()
    ..writeln()
    ..write(getHeaderText('Json map'))
    ..writeln()
    ..write(jsonMap)
    ..writeln('\n')
    ..write(getHeaderText('Json with indent'))
    ..writeln()
    ..write(json)
    ..writeln('\n')
    ..write(getHeaderText('Colored Json'))
    ..writeln()
    ..write(coloredJson)
    ..writeln();

  print(buffer.toString());

  // Or you can just run
  AnsiX.printJson(jsonMap, foreground: AnsiColor.lightSkyBlue1);
}
