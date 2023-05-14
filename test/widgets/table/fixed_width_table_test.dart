import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:ansix/src/widgets/table/row.dart';
import 'package:ansix/src/widgets/table/table.dart';
import 'package:test/test.dart';

void main() {
  const int fixedWidth = 15;

  final List<AnsiTableCell> headerData = <AnsiTableCell>[
    AnsiTableCell('Name', width: fixedWidth),
    AnsiTableCell('Hex', width: fixedWidth),
    AnsiTableCell('RGB', width: fixedWidth),
  ];

  final List<AnsiTableRow> data = <AnsiColor>[AnsiColor.red, AnsiColor.green, AnsiColor.blue].map(
    (AnsiColor color) {
      return AnsiTableRow(
        data: <AnsiTableCell>[
          AnsiTableCell(color.name, width: fixedWidth),
          AnsiTableCell(color.hex, width: fixedWidth),
          AnsiTableCell(color.rgb.toString(), width: fixedWidth),
        ],
      );
    },
  ).toList(growable: false);

  for (final AnsiBorderType type in AnsiBorderType.values) {
    group(type.name, () {
      test('AnsiTable', () {
        final AnsiTable table = AnsiTable(
          border: AnsiBorder(
            style: AnsiBorderStyle.square,
            type: type,
          ),
          data: <AnsiTableRow>[AnsiTableRow(data: headerData), ...data],
        );

        expect(table.toString(), tableMocks[type]);
      });
    });
  }
}

final Map<AnsiBorderType, String> tableMocks = <AnsiBorderType, String>{
  AnsiBorderType.all: allBorderTableMock,
  AnsiBorderType.header: headerBorderTableMock,
  AnsiBorderType.inside: insideBorderTableMock,
  AnsiBorderType.insideHorizontal: insideHorizontalBorderTableMock,
  AnsiBorderType.insideVertical: insideVerticalBorderTableMock,
  AnsiBorderType.none: noBorderTableMock,
  AnsiBorderType.outside: outsideBorderTableMock,
  AnsiBorderType.outsideHorizontal: outsideHorizontalBorderTableMock,
  AnsiBorderType.outsideVertical: outsideVerticalBorderTableMock,
};

const String allBorderTableMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
├───────────────┼───────────────┼───────────────┤
│Red            │#ff0000        │(255, 0, 0)    │
├───────────────┼───────────────┼───────────────┤
│Green          │#008000        │(0, 128, 0)    │
├───────────────┼───────────────┼───────────────┤
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String headerBorderTableMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
└───────────────┴───────────────┴───────────────┘
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
 Blue            #0000ff         (0, 0, 255)     
''';

const String insideBorderTableMock = '''
Name           │Hex            │RGB            
───────────────┼───────────────┼───────────────
Red            │#ff0000        │(255, 0, 0)    
───────────────┼───────────────┼───────────────
Green          │#008000        │(0, 128, 0)    
───────────────┼───────────────┼───────────────
Blue           │#0000ff        │(0, 0, 255)    
''';

const String insideHorizontalBorderTableMock = '''
Name            Hex             RGB            
───────────────────────────────────────────────
Red             #ff0000         (255, 0, 0)    
───────────────────────────────────────────────
Green           #008000         (0, 128, 0)    
───────────────────────────────────────────────
Blue            #0000ff         (0, 0, 255)    
''';

const String insideVerticalBorderTableMock = '''
Name           │Hex            │RGB            
Red            │#ff0000        │(255, 0, 0)    
Green          │#008000        │(0, 128, 0)    
Blue           │#0000ff        │(0, 0, 255)    
''';

const String noBorderTableMock = '''
Name           Hex            RGB            
Red            #ff0000        (255, 0, 0)    
Green          #008000        (0, 128, 0)    
Blue           #0000ff        (0, 0, 255)    
''';

const String outsideBorderTableMock = '''
┌─────────────────────────────────────────────┐
│Name           Hex            RGB            │
│Red            #ff0000        (255, 0, 0)    │
│Green          #008000        (0, 128, 0)    │
│Blue           #0000ff        (0, 0, 255)    │
└─────────────────────────────────────────────┘''';

const String outsideHorizontalBorderTableMock = '''
│Name           Hex            RGB            │
│Red            #ff0000        (255, 0, 0)    │
│Green          #008000        (0, 128, 0)    │
│Blue           #0000ff        (0, 0, 255)    │''';

const String outsideVerticalBorderTableMock = '''
─────────────────────────────────────────────
Name           Hex            RGB            
Red            #ff0000        (255, 0, 0)    
Green          #008000        (0, 128, 0)    
Blue           #0000ff        (0, 0, 255)    
─────────────────────────────────────────────''';
