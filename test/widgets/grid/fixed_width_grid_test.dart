import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  final List<List<dynamic>> data = <List<dynamic>>[
    <dynamic>['Name', AnsiColor.red.name, AnsiColor.green.name, AnsiColor.blue.name],
    <dynamic>['Hex', AnsiColor.red.hex, AnsiColor.green.hex, AnsiColor.blue.hex],
    <dynamic>['RGB', AnsiColor.red.rgb, AnsiColor.green.rgb, AnsiColor.blue.rgb],
  ];

  for (final AnsiBorderType type in AnsiBorderType.values) {
    group(type.name, () {
      test('AnsiGrid', () {
        final AnsiGrid grid = AnsiGrid.fromColumns(
          data,
          theme: AnsiGridTheme(
            fixedCellWidth: 15,
            transparent: true,
            border: AnsiBorder(
              style: AnsiBorderStyle.square,
              type: type,
            ),
          ),
        );

        expect(grid.toString(), mocks[type]);
      });
    });
  }

  test('non-transparent', () {
    final AnsiGrid grid = AnsiGrid.fromColumns(
      data,
      theme: const AnsiGridTheme(
        fixedCellWidth: 15,
        transparent: false,
        border: AnsiBorder(
          style: AnsiBorderStyle.square,
          type: AnsiBorderType.all,
        ),
      ),
    );

    final String actual = 'this is a grid\n${grid.formattedText}';
    expect(actual.withForegroundColor(AnsiColor.indianRed), nonTransparentGridMock);
  });

  test('non-transparent with colored borders', () {
    final AnsiGrid grid = AnsiGrid.fromColumns(
      data,
      theme: const AnsiGridTheme(
        transparent: false,
        fixedCellWidth: 15,
        border: AnsiBorder(
          style: AnsiBorderStyle.square,
          type: AnsiBorderType.all,
          color: AnsiColor.cadetBlue,
        ),
      ),
    );

    expect(grid.formattedText, nonTransparentGridWithColoredBordersMock);
  });
}

final Map<AnsiBorderType, String> mocks = <AnsiBorderType, String>{
  AnsiBorderType.all: allBorderGridMock,
  AnsiBorderType.inside: insideBorderGridMock,
  AnsiBorderType.insideHorizontal: insideHorizontalBorderGridMock,
  AnsiBorderType.insideVertical: insideVerticalBorderGridMock,
  AnsiBorderType.none: noBorderGridMock,
  AnsiBorderType.outside: outsideBorderGridMock,
  AnsiBorderType.outsideHorizontal: outsideHorizontalBorderGridMock,
  AnsiBorderType.outsideVertical: outsideVerticalBorderGridMock,
};

const String allBorderGridMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
├───────────────┼───────────────┼───────────────┤
│Red            │#ff0000        │(255, 0, 0)    │
├───────────────┼───────────────┼───────────────┤
│Green          │#008000        │(0, 128, 0)    │
├───────────────┼───────────────┼───────────────┤
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String headerBorderGridMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
└───────────────┴───────────────┴───────────────┘
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
 Blue            #0000ff         (0, 0, 255)     ''';

const String insideBorderGridMock = '''
Name           │Hex            │RGB            
───────────────┼───────────────┼───────────────
Red            │#ff0000        │(255, 0, 0)    
───────────────┼───────────────┼───────────────
Green          │#008000        │(0, 128, 0)    
───────────────┼───────────────┼───────────────
Blue           │#0000ff        │(0, 0, 255)    ''';

const String insideHorizontalBorderGridMock = '''
Name            Hex             RGB            
───────────────────────────────────────────────
Red             #ff0000         (255, 0, 0)    
───────────────────────────────────────────────
Green           #008000         (0, 128, 0)    
───────────────────────────────────────────────
Blue            #0000ff         (0, 0, 255)    ''';

const String insideVerticalBorderGridMock = '''
Name           │Hex            │RGB            
Red            │#ff0000        │(255, 0, 0)    
Green          │#008000        │(0, 128, 0)    
Blue           │#0000ff        │(0, 0, 255)    ''';

const String noBorderGridMock = '''
Name           Hex            RGB            
Red            #ff0000        (255, 0, 0)    
Green          #008000        (0, 128, 0)    
Blue           #0000ff        (0, 0, 255)    ''';

const String outsideBorderGridMock = '''
┌─────────────────────────────────────────────┐
│Name           Hex            RGB            │
│Red            #ff0000        (255, 0, 0)    │
│Green          #008000        (0, 128, 0)    │
│Blue           #0000ff        (0, 0, 255)    │
└─────────────────────────────────────────────┘''';

const String outsideVerticalBorderGridMock = '''
│Name            Hex             RGB            │
│Red             #ff0000         (255, 0, 0)    │
│Green           #008000         (0, 128, 0)    │
│Blue            #0000ff         (0, 0, 255)    │''';

const String outsideHorizontalBorderGridMock = '''
─────────────────────────────────────────────
Name           Hex            RGB            
Red            #ff0000        (255, 0, 0)    
Green          #008000        (0, 128, 0)    
Blue           #0000ff        (0, 0, 255)    
─────────────────────────────────────────────''';

const String headerFooterBorderGridMock = '''
┌───────────────┬───────────────┬───────────────┐
│Name           │Hex            │RGB            │
└───────────────┴───────────────┴───────────────┘
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
┌───────────────┬───────────────┬───────────────┐
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String footerBorderGridMock = '''
 Name            Hex             RGB             
 Red             #ff0000         (255, 0, 0)     
 Green           #008000         (0, 128, 0)     
┌───────────────┬───────────────┬───────────────┐
│Blue           │#0000ff        │(0, 0, 255)    │
└───────────────┴───────────────┴───────────────┘''';

const String nonTransparentGridMock = '''
\x1B[38;5;131mthis is a grid
\x1B[0m┌───────────────┬───────────────┬───────────────┐
\x1B[0m│Name           │Hex            │RGB            │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Red            │#ff0000        │(255, 0, 0)    │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Green          │#008000        │(0, 128, 0)    │
\x1B[0m├───────────────┼───────────────┼───────────────┤
\x1B[0m│Blue           │#0000ff        │(0, 0, 255)    │
\x1B[0m└───────────────┴───────────────┴───────────────┘\x1B[0m''';

const String nonTransparentGridWithColoredBordersMock =
    '''[0m[38;5;72m┌───────────────┬───────────────┬───────────────┐[0m
[0m[38;5;72m│[0mName           [38;5;72m│[0mHex            [38;5;72m│[0mRGB            [38;5;72m│[0m
[0m[38;5;72m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mRed            [38;5;72m│[0m#ff0000        [38;5;72m│[0m(255, 0, 0)    [38;5;72m│[0m
[0m[38;5;72m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mGreen          [38;5;72m│[0m#008000        [38;5;72m│[0m(0, 128, 0)    [38;5;72m│[0m
[0m[38;5;72m├───────────────┼───────────────┼───────────────┤[0m
[0m[38;5;72m│[0mBlue           [38;5;72m│[0m#0000ff        [38;5;72m│[0m(0, 0, 255)    [38;5;72m│[0m
[0m[38;5;72m└───────────────┴───────────────┴───────────────┘[0m''';
