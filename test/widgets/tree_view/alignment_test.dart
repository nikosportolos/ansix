import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  final Map<String, dynamic> data = <String, dynamic>{
    'map': <String, dynamic>{
      'id': 123,
      'username': 'AnsiX',
    },
    'empty_map': <String, String>{},
    'list': <String>['This', 'is', 'AnsiX'],
    'empty_list': <String>[],
  };

  group('AnsiTree alignment', () {
    for (final AnsiTextAlignment treeAlignment in AnsiTextAlignment.values) {
      group('treeAlignment: ${treeAlignment.name}', () {
        for (final AnsiTextAlignment? valueNodeAlignment in <AnsiTextAlignment?>[null, ...AnsiTextAlignment.values]) {
          group('valueNodeAlignment: ${valueNodeAlignment?.name}', () {
            test('${treeAlignment.name}-${valueNodeAlignment?.name}', () {
              expect(
                AnsiTreeView(
                  data,
                  theme: AnsiTreeViewTheme(
                    alignment: treeAlignment,
                    headerTheme: const AnsiTreeHeaderTheme(showHash: false),
                    valueTheme: AnsiTreeNodeValueTheme(
                      alignment: valueNodeAlignment,
                    ),
                  ),
                ).formattedText,
                _mocks[treeAlignment]?[valueNodeAlignment],
              );
            });
          });
        }
      });
    }
  });
}

const Map<AnsiTextAlignment, Map<AnsiTextAlignment?, String>> _mocks =
    <AnsiTextAlignment, Map<AnsiTextAlignment?, String>>{
  AnsiTextAlignment.left: <AnsiTextAlignment?, String>{
    AnsiTextAlignment.left: _leftTreeLeftValueMock,
    AnsiTextAlignment.center: _leftTreeCenterValueMock,
    AnsiTextAlignment.right: _leftTreeRightValueMock,
    null: _leftTreeNullValueMock,
  },
  AnsiTextAlignment.center: <AnsiTextAlignment?, String>{
    AnsiTextAlignment.left: _centerTreeLeftValueMock,
    AnsiTextAlignment.center: _centerTreeCenterValueMock,
    AnsiTextAlignment.right: _centerTreeRightValueMock,
    null: _centerTreeNullValueMock,
  },
  AnsiTextAlignment.right: <AnsiTextAlignment?, String>{
    AnsiTextAlignment.left: _rightTreeLeftValueMock,
    AnsiTextAlignment.center: _rightTreeCenterValueMock,
    AnsiTextAlignment.right: _rightTreeRightValueMock,
    null: _rightTreeNullValueMock,
  },
};

const String _leftTreeLeftValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
├─────────────────────┘
├── [1mmap[22m
│   ├── [1mid[22m: 123
│   └── [1musername[22m: AnsiX
├── [1mempty_map[22m
│   └── (empty)
├── [1mlist[22m
│   ├── This
│   ├── is
│   └── AnsiX
└── [1mempty_list[22m
   └── (empty)
''';

const String _leftTreeCenterValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
├─────────────────────┘
├── [1mmap[22m
│    ├── [1mid[22m: 123
│    └── [1musername[22m: AnsiX
├── [1mempty_map[22m
│       └── (empty)
├── [1mlist[22m
│     ├── This
│     ├── is
│     └── AnsiX
└── [1mempty_list[22m
        └── (empty)
''';

const String _leftTreeRightValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
├─────────────────────┘
├── [1mmap[22m
│     ├── [1mid[22m: 123
│     └── [1musername[22m: AnsiX
├── [1mempty_map[22m
│           └── (empty)
├── [1mlist[22m
│      ├── This
│      ├── is
│      └── AnsiX
└── [1mempty_list[22m
            └── (empty)
''';

const String _leftTreeNullValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
├─────────────────────┘
├── [1mmap[22m
│   ├── [1mid[22m: 123
│   └── [1musername[22m: AnsiX
├── [1mempty_map[22m
│   └── (empty)
├── [1mlist[22m
│   ├── This
│   ├── is
│   └── AnsiX
└── [1mempty_list[22m
   └── (empty)
''';

const String _centerTreeLeftValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└──────────┬──────────┘
           ├── [1mmap[22m
           │   ├── [1mid[22m: 123
           │   └── [1musername[22m: AnsiX
           ├── [1mempty_map[22m
           │   └── (empty)
           ├── [1mlist[22m
           │   ├── This
           │   ├── is
           │   └── AnsiX
           └── [1mempty_list[22m
              └── (empty)
''';

const String _centerTreeCenterValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└──────────┬──────────┘
           ├── [1mmap[22m
           │    ├── [1mid[22m: 123
           │    └── [1musername[22m: AnsiX
           ├── [1mempty_map[22m
           │       └── (empty)
           ├── [1mlist[22m
           │     ├── This
           │     ├── is
           │     └── AnsiX
           └── [1mempty_list[22m
                   └── (empty)
''';

const String _centerTreeRightValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└──────────┬──────────┘
           ├── [1mmap[22m
           │     ├── [1mid[22m: 123
           │     └── [1musername[22m: AnsiX
           ├── [1mempty_map[22m
           │           └── (empty)
           ├── [1mlist[22m
           │      ├── This
           │      ├── is
           │      └── AnsiX
           └── [1mempty_list[22m
                       └── (empty)
''';

const String _centerTreeNullValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└──────────┬──────────┘
           ├── [1mmap[22m
           │    ├── [1mid[22m: 123
           │    └── [1musername[22m: AnsiX
           ├── [1mempty_map[22m
           │       └── (empty)
           ├── [1mlist[22m
           │     ├── This
           │     ├── is
           │     └── AnsiX
           └── [1mempty_list[22m
                   └── (empty)
''';

const String _rightTreeLeftValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└─────────────────────┤
                      ├── [1mmap[22m
                      │   ├── [1mid[22m: 123
                      │   └── [1musername[22m: AnsiX
                      ├── [1mempty_map[22m
                      │   └── (empty)
                      ├── [1mlist[22m
                      │   ├── This
                      │   ├── is
                      │   └── AnsiX
                      └── [1mempty_list[22m
                         └── (empty)
''';

const String _rightTreeCenterValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└─────────────────────┤
                      ├── [1mmap[22m
                      │    ├── [1mid[22m: 123
                      │    └── [1musername[22m: AnsiX
                      ├── [1mempty_map[22m
                      │       └── (empty)
                      ├── [1mlist[22m
                      │     ├── This
                      │     ├── is
                      │     └── AnsiX
                      └── [1mempty_list[22m
                              └── (empty)
''';

const String _rightTreeRightValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└─────────────────────┤
                      ├── [1mmap[22m
                      │     ├── [1mid[22m: 123
                      │     └── [1musername[22m: AnsiX
                      ├── [1mempty_map[22m
                      │           └── (empty)
                      ├── [1mlist[22m
                      │      ├── This
                      │      ├── is
                      │      └── AnsiX
                      └── [1mempty_list[22m
                                  └── (empty)
''';

const String _rightTreeNullValueMock = '''┌─────────────────────┐
│_Map<String, dynamic>│
└─────────────────────┤
                      ├── [1mmap[22m
                      │     ├── [1mid[22m: 123
                      │     └── [1musername[22m: AnsiX
                      ├── [1mempty_map[22m
                      │           └── (empty)
                      ├── [1mlist[22m
                      │      ├── This
                      │      ├── is
                      │      └── AnsiX
                      └── [1mempty_list[22m
                                  └── (empty)
''';
