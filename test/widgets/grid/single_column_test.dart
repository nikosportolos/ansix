import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  final List<Object?> data = <Object?>[
    'Name',
    ...<AnsiColor>[
      AnsiColor.red,
      AnsiColor.green,
      AnsiColor.blue,
    ].map((AnsiColor color) {
      return color.name;
    }),
  ];

  for (final AnsiBorderType type in AnsiBorderType.values) {
    group(type.name, () {
      final AnsiBorder border = AnsiBorder(
        style: AnsiBorderStyle.square,
        type: type,
      );

      test('AnsiGrid.single - horizontal', () {
        expect(
          AnsiGrid.list(
            data,
            theme: AnsiGridTheme(
              border: border,
              transparent: true,
              orientation: AnsiOrientation.horizontal,
            ),
          ).formattedText,
          horizontalMocks[type],
        );
      });

      test('AnsiGrid.single - vertical', () {
        expect(
          AnsiGrid.list(
            data,
            theme: AnsiGridTheme(
              border: border,
              transparent: true,
              orientation: AnsiOrientation.vertical,
            ),
          ).formattedText,
          verticalMocks[type],
        );
      });
    });
  }
}

final Map<AnsiBorderType, String> verticalMocks = <AnsiBorderType, String>{
  AnsiBorderType.all: verticalGridAll,
  AnsiBorderType.inside: verticalGridInside,
  AnsiBorderType.insideHorizontal: verticalGridInsideHorizontal,
  AnsiBorderType.insideVertical: verticalGridInsideVertical,
  AnsiBorderType.none: verticalGridNoBorder,
  AnsiBorderType.outside: verticalGridOutside,
  AnsiBorderType.outsideHorizontal: verticalGridOutsideHorizontal,
  AnsiBorderType.outsideVertical: verticalGridOutsideVertical,
};

final Map<AnsiBorderType, String> horizontalMocks = <AnsiBorderType, String>{
  AnsiBorderType.all: horizontalGridAll,
  AnsiBorderType.inside: horizontalGridInside,
  AnsiBorderType.insideHorizontal: horizontalGridInsideHorizontal,
  AnsiBorderType.insideVertical: horizontalGridInsideVertical,
  AnsiBorderType.none: horizontalGridNoBorder,
  AnsiBorderType.outside: horizontalGridOutside,
  AnsiBorderType.outsideHorizontal: horizontalGridOutsideHorizontal,
  AnsiBorderType.outsideVertical: horizontalGridOutsideVertical,
};

const String verticalGridAll = '''
┌─────┐
│Name │
├─────┤
│Red  │
├─────┤
│Green│
├─────┤
│Blue │
└─────┘''';

const String horizontalGridAll = '''
┌─────┬─────┬─────┬─────┐
│Name │Red  │Green│Blue │
└─────┴─────┴─────┴─────┘''';

const String verticalGridInside = '''
Name 
─────
Red  
─────
Green
─────
Blue ''';

const String horizontalGridInside = 'Name │Red  │Green│Blue ';

const String verticalGridInsideHorizontal = '''
Name 
─────
Red  
─────
Green
─────
Blue ''';

const String horizontalGridInsideHorizontal = 'Name  Red   Green Blue ';

const String verticalGridInsideVertical = '''
Name 
Red  
Green
Blue ''';

const String horizontalGridInsideVertical = 'Name │Red  │Green│Blue ';

const String verticalGridNoBorder = '''
Name 
Red  
Green
Blue ''';

const String horizontalGridNoBorder = 'Name Red  GreenBlue ';

const String verticalGridOutside = '''
┌─────┐
│Name │
│Red  │
│Green│
│Blue │
└─────┘''';

const String horizontalGridOutside = '''
┌────────────────────┐
│Name Red  GreenBlue │
└────────────────────┘''';

const String verticalGridOutsideHorizontal = '''
─────
Name 
Red  
Green
Blue 
─────''';

const String horizontalGridOutsideHorizontal = '''
────────────────────
Name Red  GreenBlue 
────────────────────''';

const String verticalGridOutsideVertical = '''
│Name │
│Red  │
│Green│
│Blue │''';

const String horizontalGridOutsideVertical = '''
│Name  Red   Green Blue │''';
