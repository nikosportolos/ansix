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

final List<List<Object?>> gridData = <List<Object?>>[
  <Object?>[1, 2, 3, 4, 5],
];

const String mockStyledText = '[1mThis is a test message.[22m';
const String mockText = 'This is a test message.';

const String mockJson = '''
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

const String mockFormattedJson = '''
[1m{
  "id": "12345",
  "name": "AnsiX",
  "dependencies": [
    "collection",
    "data_class_plugin",
    "meta",
    "path"
  ]
}[22m''';

const String mockTreeView = '''
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

const String mockUnformattedTreeView = '''
┌──────────────────────────┐
│_ConstMap<String, dynamic>│
└────────────┬─────────────┘
             ├── dependencies
             │         ├── collection
             │         ├── data_class_plugin
             │         ├── meta
             │         └── path
             ├── id: 12345
             └── name: AnsiX
''';

const String mockGridFromColumns = '''
[0m[38;5;15m┌─┐[0m
[0m[38;5;15m│[0m1[38;5;15m│[0m
[0m[38;5;15m├─┤[0m
[0m[38;5;15m│[0m2[38;5;15m│[0m
[0m[38;5;15m├─┤[0m
[0m[38;5;15m│[0m3[38;5;15m│[0m
[0m[38;5;15m├─┤[0m
[0m[38;5;15m│[0m4[38;5;15m│[0m
[0m[38;5;15m├─┤[0m
[0m[38;5;15m│[0m5[38;5;15m│[0m
[0m[38;5;15m└─┘[0m''';

const String mockUnformattedGridFromColumns = '''
┌─┐
│1│
├─┤
│2│
├─┤
│3│
├─┤
│4│
├─┤
│5│
└─┘''';

const String mockGridFromRows = '''
[0m[38;5;15m┌─┬─┬─┬─┬─┐[0m
[0m[38;5;15m│[0m1[38;5;15m│[0m2[38;5;15m│[0m3[38;5;15m│[0m4[38;5;15m│[0m5[38;5;15m│[0m
[0m[38;5;15m└─┴─┴─┴─┴─┘[0m''';

const String mockUnformattedGridFromRows = '''
┌─┬─┬─┬─┬─┐
│1│2│3│4│5│
└─┴─┴─┴─┴─┘''';
