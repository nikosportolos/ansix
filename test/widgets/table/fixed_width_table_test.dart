import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/table/cell.dart';
import 'package:test/test.dart';

void main() {
  const int fixedWidth = 15;

  final List<AnsiTableCell> headerData = <AnsiTableCell>[
    AnsiTableCell('Name', fixedWidth: fixedWidth),
    AnsiTableCell('Hex', fixedWidth: fixedWidth),
    AnsiTableCell('RGB', fixedWidth: fixedWidth),
  ];

  final List<AnsiTableRow> data = <AnsiColor>[AnsiColor.red, AnsiColor.green, AnsiColor.blue].map(
    (AnsiColor color) {
      return AnsiTableRow(
        data: <AnsiTableCell>[
          AnsiTableCell(color.name, fixedWidth: fixedWidth),
          AnsiTableCell(color.hex, fixedWidth: fixedWidth),
          AnsiTableCell(color.rgb.toString(), fixedWidth: fixedWidth),
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
          rows: <AnsiTableRow>[AnsiTableRow(data: headerData), ...data],
        );

        expect(table.toString(), tableMocks[type]);
      });
    });
  }

  test('non-transparent', () {
    final String actual = 'this is a table\n'
        '${AnsiTable(
      border: const AnsiBorder(
        style: AnsiBorderStyle.square,
        type: AnsiBorderType.all,
      ),
      transparent: false,
      rows: <AnsiTableRow>[AnsiTableRow(data: headerData), ...data],
    )}';
    expect(actual.withForegroundColor(AnsiColor.indianRed), nonTransparentTableMock);
  });

  test('non-transparent with colored borders', () {
    expect(
      AnsiTable(
        border: const AnsiBorder(
          style: AnsiBorderStyle.square,
          type: AnsiBorderType.all,
          color: AnsiColor.cadetBlue,
        ),
        transparent: false,
        rows: <AnsiTableRow>[AnsiTableRow(data: headerData), ...data],
      ).formattedText,
      nonTransparentTableWithColoredBordersMock,
    );
  });
}

final Map<AnsiBorderType, String> tableMocks = <AnsiBorderType, String>{
  AnsiBorderType.all: allBorderTableMock,
  AnsiBorderType.inside: insideBorderTableMock,
  AnsiBorderType.insideHorizontal: insideHorizontalBorderTableMock,
  AnsiBorderType.insideVertical: insideVerticalBorderTableMock,
  AnsiBorderType.header: headerBorderTableMock,
  AnsiBorderType.headerFooter: headerFooterBorderTableMock,
  AnsiBorderType.footer: footerBorderTableMock,
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
 Blue            #0000ff         (0, 0, 255)     ''';

const String insideBorderTableMock = '''
Name           │Hex            │RGB            
───────────────┼───────────────┼───────────────
Red            │#ff0000        │(255, 0, 0)    
───────────────┼───────────────┼───────────────
Green          │#008000        │(0, 128, 0)    
───────────────┼───────────────┼───────────────
Blue           │#0000ff        │(0, 0, 255)    ''';

const String insideHorizontalBorderTableMock = '''
Name            Hex             RGB            
───────────────────────────────────────────────
Red             #ff0000         (255, 0, 0)    
───────────────────────────────────────────────
Green           #008000         (0, 128, 0)    
───────────────────────────────────────────────
Blue            #0000ff         (0, 0, 255)    ''';

const String insideVerticalBorderTableMock = '''
Name           │Hex            │RGB            
Red            │#ff0000        │(255, 0, 0)    
Green          │#008000        │(0, 128, 0)    
Blue           │#0000ff        │(0, 0, 255)    ''';

const String noBorderTableMock = '''
Name            Hex             RGB            
Red             #ff0000         (255, 0, 0)    
Green           #008000         (0, 128, 0)    
Blue            #0000ff         (0, 0, 255)    ''';

const String outsideBorderTableMock = '''
┌─────────────────────────────────────────────┐
│Name           Hex            RGB            │
│Red            #ff0000        (255, 0, 0)    │
│Green          #008000        (0, 128, 0)    │
│Blue           #0000ff        (0, 0, 255)    │
└─────────────────────────────────────────────┘''';

const String outsideVerticalBorderTableMock = '''
│Name            Hex             RGB            │
│Red             #ff0000         (255, 0, 0)    │
│Green           #008000         (0, 128, 0)    │
│Blue            #0000ff         (0, 0, 255)    │''';

const String outsideHorizontalBorderTableMock = '''
─────────────────────────────────────────────
Name            Hex             RGB            
Red             #ff0000         (255, 0, 0)    
Green           #008000         (0, 128, 0)    
Blue            #0000ff         (0, 0, 255)    
─────────────────────────────────────────────''';

const String headerFooterBorderTableMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
└───────────────┴───────────────┴───────────────┘
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
┌───────────────┬───────────────┬───────────────┐
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String footerBorderTableMock = '''
 Name            Hex             RGB             
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
┌───────────────┬───────────────┬───────────────┐
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String nonTransparentTableMock = '''
\x1B[38;5;131mthis is a table
\x1B[0m┌───────────────┬───────────────┬───────────────┐
\x1B[0m│Name           │Hex            │RGB            │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Red            │#ff0000        │(255, 0, 0)    │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Green          │#008000        │(0, 128, 0)    │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Blue           │#0000ff        │(0, 0, 255)    │
\x1B[0m└───────────────┴───────────────┴───────────────┘\x1B[0m''';

const String nonTransparentTableWithColoredBordersMock = '''
[38;5;72m[0m┌───────────────┬───────────────┬───────────────┐[0m
[0m[38;5;72m│[0mName           [38;5;72m│[0mHex            [38;5;72m│[0mRGB            [38;5;72m│[0m
[38;5;72m[0m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mRed            [38;5;72m│[0m#ff0000        [38;5;72m│[0m(255, 0, 0)    [38;5;72m│[0m
[38;5;72m[0m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mGreen          [38;5;72m│[0m#008000        [38;5;72m│[0m(0, 128, 0)    [38;5;72m│[0m
[38;5;72m[0m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mBlue           [38;5;72m│[0m#0000ff        [38;5;72m│[0m(0, 0, 255)    [38;5;72m│[0m
[38;5;72m[0m└───────────────┴───────────────┴───────────────┘[0m''';
