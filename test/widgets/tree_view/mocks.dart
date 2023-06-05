typedef MyRecord = (int a, int b);

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

const String treeviewLongTextWithColorsMock = '''
_Map<String, dynamic>
         ├── \x1B[1mid\x1B[22m: \x1B[38;5;72m123\x1B[0m
         ├── \x1B[1mtitle\x1B[22m: \x1B[38;5;72mLorem ipsum dolor sit amet\x1B[0m
         ├── \x1B[1mdescription\x1B[22m: \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut\x1B[0m
         │                \x1B[38;5;72mlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco\x1B[0m
         │                \x1B[38;5;72mlaboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non\x1B[0m
         │                \x1B[38;5;72mproident, sunt in culpa qui officia deserunt mollit anim id est laborum.\x1B[0m
         ├── \x1B[1mpostedOn\x1B[22m: \x1B[38;5;72m2023-06-02T13:01:43.597697\x1B[0m
         └── \x1B[1mbody\x1B[22m: \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et\x1B[0m
                   \x1B[38;5;72mdolore magna aliqua.\x1B[0m
                   \x1B[38;5;72mUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\x1B[0m
                   \x1B[38;5;72mconsequat.\x1B[0m
                   \x1B[38;5;72mDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\x1B[0m
                   \x1B[38;5;72mExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\x1B[0m
                   \x1B[38;5;72mlaborum.\x1B[0m
                   \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et\x1B[0m
                   \x1B[38;5;72mdolore magna aliqua.\x1B[0m
                   \x1B[38;5;72mUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\x1B[0m
                   \x1B[38;5;72mconsequat.\x1B[0m
                   \x1B[38;5;72mDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.\x1B[0m
                   \x1B[38;5;72mExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est\x1B[0m
                   \x1B[38;5;72mlaborum.\x1B[0m
''';

const String treeviewMixedMock = '''
_Map<dynamic, dynamic>
           ├── id: 123
           ├── record
           │      └── (1, 2)
           ├── map
           │    ├── num: 12
           │    ├── int: 4324
           │    ├── double: 43.24
           │    ├── bool: false
           │    ├── String: this is a test message
           │    ├── record
           │    │      └── (1, 2)
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
           ├── long-text: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
           │              labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco
           │              laboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non
           │              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
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
                │   └── (1, 2)
                ├── 7
                │   └── objectWithToString
                │                └── MockClassWithToString(3, MockClassWithToString)
                ├── 8
                │   └── objectWithToJson
                │               ├── id: 3
                │               └── text: MockClassWithToJson
                ├── 9
                │   └── objectWithToMap
                │              ├── 3: 3
                │              └── text: MockClassWithToMap
                ├── 10
                │    ├── id: 44
                │    └── email: test@email.com
                ├── 11
                │    ├── 1
                │    ├── 2
                │    ├── 3
                │    ├── 4
                │    └── 5
                ├── 12
                │    └── MockClassWithToString(4, MockClassWithToString)
                ├── 13
                │    ├── id: 4
                │    └── text: MockClassWithToJson
                ├── 14
                │    ├── 4: 4
                │    └── text: MockClassWithToMap
                └── 15
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
