import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/widgets/table/table.dart';
import 'package:test/test.dart';

void main() {
  for (final AnsiBorderType type in AnsiBorderType.values) {
    final AnsiBorder border = AnsiBorder(
      style: AnsiBorderStyle.square,
      type: type,
    );
    group(type.name, () {
      test('AnsiTable.fromList', () {
        final AnsiTable list = AnsiTable.fromList(
          border: border,
          <Object?>[
            'Name',
            ...<AnsiColor>[
              AnsiColor.red,
              AnsiColor.green,
              AnsiColor.blue,
            ].map((AnsiColor color) {
              return color.name;
            }),
          ],
        );

        expect(list.toString(), listMocks[type]);
      });
    });
  }
}

final Map<AnsiBorderType, String> listMocks = <AnsiBorderType, String>{
  AnsiBorderType.all: allBorderListMock,
  AnsiBorderType.header: headerBorderListMock,
  AnsiBorderType.inside: insideBorderListMock,
  AnsiBorderType.insideHorizontal: insideHorizontalBorderListMock,
  AnsiBorderType.insideVertical: insideVerticalBorderListMock,
  AnsiBorderType.none: noBorderListMock,
  AnsiBorderType.outside: outsideBorderListMock,
  AnsiBorderType.outsideHorizontal: outsideHorizontalBorderListMock,
  AnsiBorderType.outsideVertical: outsideVerticalBorderListMock,
};

const String allBorderListMock = '''
┌─────┐
│Name │
├─────┤
│Red  │
├─────┤
│Green│
├─────┤
│Blue │
└─────┘''';

const String headerBorderListMock = '''
┌─────┐
│Name │
└─────┘
 Red   
 Green 
 Blue  
''';

const String insideBorderListMock = '''
Name 
─────
Red  
─────
Green
─────
Blue 
''';

const String insideHorizontalBorderListMock = '''
Name 
─────
Red  
─────
Green
─────
Blue 
''';

const String insideVerticalBorderListMock = '''
Name 
Red  
Green
Blue 
''';

const String noBorderListMock = '''
Name 
Red  
Green
Blue 
''';

const String outsideBorderListMock = '''
┌─────┐
│Name │
│Red  │
│Green│
│Blue │
└─────┘''';

const String outsideHorizontalBorderListMock = '''
│Name │
│Red  │
│Green│
│Blue │''';

const String outsideVerticalBorderListMock = '''
─────
Name 
Red  
Green
Blue 
─────''';
