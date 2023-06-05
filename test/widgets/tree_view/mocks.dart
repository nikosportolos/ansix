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
[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [38;5;15m[1m[38;5;15m[1m_Map<dynamic, dynamic>[22m[0m[22m[0m  [38;5;31m│[0m
[38;5;31m└────────────┬─────────────┘[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m123[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m      [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mnum[22m[0m: [38;5;145m[3m12[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mint[22m[0m: [38;5;145m[3m4324[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mdouble[22m[0m: [38;5;145m[3m43.24[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mbool[22m[0m: [38;5;145m[3mfalse[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mString[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m      [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m            [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(1, MockClassWithToString)[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m           [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m          [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m          [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
             [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
             [38;5;31m│[0m    [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
             [38;5;31m│[0m    [38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
             [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m          [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value1[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m123[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlaboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mproident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value2[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m            [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(2, MockClassWithToString)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m           [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m          [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m          [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3mtrue[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3mfalse[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3mnull[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m12[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m232.2[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m5[22m[0m: [38;5;145m[3mtext message[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m6[22m[0m
                  [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m7[22m[0m
                  [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
                  [38;5;31m│[0m                [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(3, MockClassWithToString)[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m8[22m[0m
                  [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
                  [38;5;31m│[0m               [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m3[23m[0m
                  [38;5;31m│[0m               [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m9[22m[0m
                  [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
                  [38;5;31m│[0m              [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m3[23m[0m
                  [38;5;31m│[0m              [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m10[22m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
                  [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m11[22m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
                  [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m12[22m[0m
                  [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(4, MockClassWithToString)[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m13[22m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m4[23m[0m
                  [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m14[22m[0m
                  [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m4[23m[0m
                  [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                  [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m15[22m[0m
                       [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value3[23m[0m
''';

const String treeviewMixedMock1 = '''
[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [38;5;15m[1m[38;5;15m[1m_Map<dynamic, dynamic>[22m[0m[22m[0m  [38;5;31m│[0m
[38;5;31m└────────────┬─────────────┘[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m123[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mnum[22m[0m: [38;5;145m[3m12[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mint[22m[0m: [38;5;145m[3m4324[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mdouble[22m[0m: [38;5;145m[3m43.24[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mbool[22m[0m: [38;5;145m[3mfalse[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mString[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(1, MockClassWithToString)[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
             [38;5;31m│[0m   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value1[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m123[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlaboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mproident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value2[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(2, MockClassWithToString)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3mtrue[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3mfalse[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3mnull[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m12[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m232.2[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m5[22m[0m: [38;5;145m[3mtext message[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m6[22m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m7[22m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
                [38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(3, MockClassWithToString)[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m8[22m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
                [38;5;31m│[0m       [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m3[23m[0m
                [38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m9[22m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
                [38;5;31m│[0m       [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m3[23m[0m
                [38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m10[22m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m11[22m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m12[22m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(4, MockClassWithToString)[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m13[22m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m4[23m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m14[22m[0m
                [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m4[23m[0m
                [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m15[22m[0m
                    [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value3[23m[0m
''';

const String treeviewMixedMock2 = '''
[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [38;5;15m[1m[38;5;15m[1m_Map<dynamic, dynamic>[22m[0m[22m[0m  [38;5;31m│[0m
[38;5;31m└────────────┬─────────────┘[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m123[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m        [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mnum[22m[0m: [38;5;145m[3m12[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mint[22m[0m: [38;5;145m[3m4324[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mdouble[22m[0m: [38;5;145m[3m43.24[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mbool[22m[0m: [38;5;145m[3mfalse[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mString[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mrecord[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m        [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m                    [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(1, MockClassWithToString)[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m                  [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m                 [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m                 [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mmap[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
             [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
             [38;5;31m│[0m     [38;5;31m│[0m      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
             [38;5;31m│[0m     [38;5;31m│[0m      [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
             [38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m            [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value1[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m123[22m[0m: [38;5;145m[3mthis is a test message[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlabore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mlaboris nisi ut aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mproident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1menum[22m[0m
             [38;5;31m│[0m      [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value2[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
             [38;5;31m│[0m                    [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(2, MockClassWithToString)[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
             [38;5;31m│[0m                  [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m                  [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
             [38;5;31m│[0m                 [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m2[23m[0m
             [38;5;31m│[0m                 [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
             [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mlist[22m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3mtrue[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3mfalse[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3mnull[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m12[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m232.2[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m5[22m[0m: [38;5;145m[3mtext message[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m6[22m[0m
                   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(1, 2)[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m7[22m[0m
                   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToString[22m[0m
                   [38;5;31m│[0m                        [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(3, MockClassWithToString)[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m8[22m[0m
                   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToJson[22m[0m
                   [38;5;31m│[0m                      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m3[23m[0m
                   [38;5;31m│[0m                      [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m9[22m[0m
                   [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mobjectWithToMap[22m[0m
                   [38;5;31m│[0m                     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m3[23m[0m
                   [38;5;31m│[0m                     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m10[22m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m44[23m[0m
                   [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m: [38;5;145m[3mtest@email.com[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m11[22m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m: [38;5;145m[3m1[23m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m: [38;5;145m[3m2[23m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m2[22m[0m: [38;5;145m[3m3[23m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m3[22m[0m: [38;5;145m[3m4[23m[0m
                   [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m5[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m12[22m[0m
                   [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockClassWithToString(4, MockClassWithToString)[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m13[22m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m4[23m[0m
                   [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToJson[23m[0m
                   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m14[22m[0m
                   [38;5;31m│[0m    [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m4[22m[0m: [38;5;145m[3m4[23m[0m
                   [38;5;31m│[0m    [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mtext[22m[0m: [38;5;145m[3mMockClassWithToMap[23m[0m
                   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m15[22m[0m
                        [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mMockEnum.value3[23m[0m
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
