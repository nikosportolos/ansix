const String treeViewMock1 = '''
List<int>
   ├── 1
   ├── 2
   ├── 3
   ├── 4
   └── 5
''';

const String treeViewMock2 = '''
_Map<String, dynamic>
         ├── \x1B[1mid\x1B[22m: 12312
         └── \x1B[1musername\x1B[22m: AnsiX
''';

const String treeViewMock3 = '''
String
   └── This is a test message
''';

const String treeViewMockObject = '''
User
 ├── id: #123456789
 ├── name: John Doe
 ├── email
 │     ├── primary: john.doe@email.com
 │     ├── secondary: null
 │     └── personal: jd30@email.com
 ├── age: 30
 ├── phone: 555-1234
 ├── addresses
 │       ├── 0
 │       │   ├── street: 123 Main St
 │       │   ├── city: New York
 │       │   └── state: NY
 │       └── 1
 │           ├── street: 56 Flutter Avenue
 │           ├── city: Las Vegas
 │           └── state: LV
 └── groups
       ├── moderator
       ├── author
       └── tester
''';

const String treeViewMockExpanded = '''
┌────┐
│User│
└──┬─┘
   │
   ├──── addresses
   │         │
   │         ├──── 0
   │         │     │
   │         │     ├──── city: New York
   │         │     │
   │         │     ├──── state: NY
   │         │     │
   │         │     └──── street: 123 Main St
   │         │
   │         └──── 1
   │               │
   │               ├──── city: Las Vegas
   │               │
   │               ├──── state: LV
   │               │
   │               └──── street: 56 Flutter Avenue
   │
   ├──── age: 30
   │
   ├──── email
   │       │
   │       ├──── personal: jd30@email.com
   │       │
   │       ├──── primary: john.doe@email.com
   │       │
   │       └──── secondary: null
   │
   ├──── groups
   │        │
   │        ├──── moderator
   │        │
   │        ├──── author
   │        │
   │        └──── tester
   │
   ├──── id: #123456789
   │
   ├──── name: John Doe
   │
   └──── phone: 555-1234
''';

const String treeviewNestedMock = '''
┌───────────┐
│  Node<1>  │
└────┬──────┘
     ├── id: 7845445335
     ├── child: null
     └── nodes
          ├── 0
          │   ├── id: 1231231231
          │   ├── child: null
          │   └── nodes
          │        └── 0
          │            ├── id: 34454354453
          │            ├── child: null
          │            └── nodes
          │                 └── (empty)
          └── 1
              ├── id: 5463456343
              ├── child: null
              └── nodes
                   └── (empty)
''';

const String treeviewEmptyMock = '''
_Map<String, dynamic>
         ├── map
         │    ├── id: 123
         │    └── username: AnsiX
         ├── empty_map
         │       └── (empty)
         ├── list
         │     ├── This
         │     ├── is
         │     └── AnsiX
         └── empty_list
                 └── (empty)
''';

const String treeviewMixedBordersMock = '''
┌─────────────────────┐
│_Map<String, dynamic>│
└──────────┬──────────┘
           |-- map
           |    |-- id: 123
           |    |-- username: AnsiX
           |-- empty_map
           |       |-- (empty)
           |-- list
           |     |-- This
           |     |-- is
           |     |-- AnsiX
           |-- empty_list
                   |-- (empty)
''';

const String treeviewLongTextMock = '''
_Map<String, dynamic>
         ├── id: 123
         ├── title: Lorem ipsum dolor sit amet
         ├── description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
         │                labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
         │                laboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non
         │                proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
         ├── postedOn: 2023-06-02T13:01:43.597697
         └── body: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et
                   dolore magna aliqua.
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                   consequat.
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                   Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                   laborum.
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et
                   dolore magna aliqua.
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                   consequat.
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                   Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                   laborum.
''';

const String treeviewMixedMock = '''
_Map<dynamic, dynamic>
           ├── id: 123
           ├── map
           │    ├── num: 12
           │    ├── int: 4324
           │    ├── double: 43.24
           │    ├── bool: false
           │    ├── String: this is a test message
           │    ├── objectWithToString
           │    │            └── MockClassWithToString(1, MockClassWithToString)
           │    ├── objectWithToJson
           │    │           ├── id: 1
           │    │           └── text: MockClassWithToJson
           │    ├── objectWithToMap
           │    │          ├── 1: 1
           │    │          └── text: MockClassWithToMap
           │    ├── map
           │    │    ├── id: 44
           │    │    └── email: test@email.com
           │    ├── list
           │    │     ├── 1
           │    │     ├── 2
           │    │     ├── 3
           │    │     ├── 4
           │    │     └── 5
           │    └── enum
           │          └── MockEnum.value1
           ├── 123: this is a test message
           ├── enum
           │     └── MockEnum.value2
           ├── objectWithToString
           │            └── MockClassWithToString(2, MockClassWithToString)
           ├── objectWithToJson
           │           ├── id: 2
           │           └── text: MockClassWithToJson
           ├── objectWithToMap
           │          ├── 2: 2
           │          └── text: MockClassWithToMap
           └── list
                ├── true
                ├── false
                ├── null
                ├── 12
                ├── 232.2
                ├── text message
                ├── 6
                │   └── objectWithToString
                │                └── MockClassWithToString(3, MockClassWithToString)
                ├── 7
                │   └── objectWithToJson
                │               ├── id: 3
                │               └── text: MockClassWithToJson
                ├── 8
                │   └── objectWithToMap
                │              ├── 3: 3
                │              └── text: MockClassWithToMap
                ├── 9
                │   ├── id: 44
                │   └── email: test@email.com
                ├── 10
                │    ├── 1
                │    ├── 2
                │    ├── 3
                │    ├── 4
                │    └── 5
                ├── 11
                │    └── MockClassWithToString(4, MockClassWithToString)
                ├── 12
                │    ├── id: 4
                │    └── text: MockClassWithToJson
                ├── 13
                │    ├── 4: 4
                │    └── text: MockClassWithToMap
                └── 14
                     └── MockEnum.value3
''';

enum MockEnum { value1, value2, value3 }

class MockClassWithToString {
  const MockClassWithToString({
    required this.id,
    required this.text,
  });

  final int id;
  final String text;

  @override
  String toString() => 'MockClassWithToString($id, $text)';
}

class MockClassWithToJson {
  const MockClassWithToJson({
    required this.id,
    required this.text,
  });

  final int id;
  final String text;

  Map<String, dynamic> toJson() => <String, dynamic>{'id': id, 'text': text};
}

class MockClassWithToMap {
  const MockClassWithToMap({
    required this.id,
    required this.text,
  });

  final int id;
  final String text;

  Map<dynamic, dynamic> toMap() => <dynamic, dynamic>{id: id, 'text': text};
}
