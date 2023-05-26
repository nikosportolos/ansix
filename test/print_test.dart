import 'dart:async';

import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  const String testMessage = 'This is a test message.';

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

  group('print', () {
    group('printStyles', () {
      test('print styled text', () {
        String printLine = '';
        runZoned(
          () {
            AnsiX.allowPrint = true;
            AnsiX.printStyled(
              testMessage,
              textStyle: const AnsiTextStyle(bold: true),
            );
          },
          zoneSpecification: ZoneSpecification(
            print: (_, ZoneDelegate parent, Zone zone, String line) {
              printLine = line;
            },
          ),
        );
        expect(
          printLine,
          '${AnsiStyle.bold.startEscapeCode}'
          '$testMessage'
          '${AnsiStyle.bold.endEscapeCode}',
        );
      });
      test("don't print", () {
        String printLine = '';
        runZoned(
          () {
            AnsiX.allowPrint = false;
            AnsiX.printStyled(
              testMessage,
              textStyle: const AnsiTextStyle(bold: true),
            );
          },
          zoneSpecification: ZoneSpecification(
            print: (_, ZoneDelegate parent, Zone zone, String line) {
              printLine = line;
            },
          ),
        );
        expect(printLine, '');
      });
    });

    group('printJson', () {
      test('print formatted json', () {
        String printLine = '';
        runZoned(
          () {
            AnsiX.allowPrint = true;
            AnsiX.printJson(
              jsonMap,
              textStyle: const AnsiTextStyle(bold: true),
            );
          },
          zoneSpecification: ZoneSpecification(
            print: (_, ZoneDelegate parent, Zone zone, String line) {
              printLine = line;
            },
          ),
        );
        expect(
          printLine,
          '${AnsiStyle.bold.startEscapeCode}'
          '$_mockJson'
          '${AnsiStyle.bold.endEscapeCode}',
        );
      });
      test("don't print", () {
        String printLine = '';
        runZoned(
          () {
            AnsiX.allowPrint = false;
            AnsiX.printJson(
              jsonMap,
              textStyle: const AnsiTextStyle(bold: true),
            );
          },
          zoneSpecification: ZoneSpecification(
            print: (_, ZoneDelegate parent, Zone zone, String line) {
              printLine = line;
            },
          ),
        );
        expect(printLine, '');
      });
    });
  });
}

const String _mockJson = '''
{
  "id": "12345",
  "name": "AnsiX",
  "dependencies": [
    "collection",
    "data_class_plugin",
    "meta",
    "path"
  ]
}''';
