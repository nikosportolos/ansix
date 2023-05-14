part of 'table_test.dart';

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
