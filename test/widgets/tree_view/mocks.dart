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
