import 'dart:async';

import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
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

  group('printTreeView', () {
    test('print formatted TreeView', () {
      String printLine = '';
      runZoned(
        () {
          AnsiX.allowPrint = true;
          AnsiX.printTreeView(
            jsonMap,
            theme: const AnsiTreeViewTheme(
              compact: true,
              sorted: true,
              headerTheme: AnsiTreeHeaderTheme(
                showHash: false,
                border: AnsiBorder(
                  type: AnsiBorderType.all,
                  style: AnsiBorderStyle.square,
                ),
              ),
              valueTheme:
                  AnsiTreeNodeValueTheme(alignment: AnsiTextAlignment.center),
            ),
          ); // , theme: AnsiTreeViewTheme.$default()
        },
        zoneSpecification: ZoneSpecification(
          print: (_, ZoneDelegate parent, Zone zone, String line) {
            printLine = line;
          },
        ),
      );
      expect(printLine, _mockTreeView);
    });

    test("don't print TreeView", () {
      String printLine = '';
      runZoned(
        () {
          AnsiX.allowPrint = false;
          AnsiX.printTreeView(jsonMap, theme: AnsiTreeViewTheme.$default());
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
}

const String _mockTreeView = '''
┌──────────────────────────┐
│_ConstMap<String, dynamic>│
└────────────┬─────────────┘
             ├── \x1B[1mdependencies\x1B[22m
             │         ├── collection
             │         ├── data_class_plugin
             │         ├── meta
             │         └── path
             ├── \x1B[1mid\x1B[22m: 12345
             └── \x1B[1mname\x1B[22m: AnsiX
''';
