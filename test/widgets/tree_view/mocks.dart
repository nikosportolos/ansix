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

const String treeviewWithVerticalPaddedHeaderMock = '''[38;5;31m┌───────┐[0m
[38;5;31m│[0m       [38;5;31m│[0m
[38;5;31m│[0mNode<1>[38;5;31m│[0m
[38;5;31m│[0m       [38;5;31m│[0m
[38;5;31m└──┬────┘[0m
   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m7845445335[23m[0m
   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mchild[22m[0m: [38;5;145m[3mnull[23m[0m
   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mnodes[22m[0m
        [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m
        [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m1231231231[23m[0m
        [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mchild[22m[0m: [38;5;145m[3mnull[23m[0m
        [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mnodes[22m[0m
        [38;5;31m│[0m        [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m
        [38;5;31m│[0m            [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m34454354453[23m[0m
        [38;5;31m│[0m            [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mchild[22m[0m: [38;5;145m[3mnull[23m[0m
        [38;5;31m│[0m            [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mnodes[22m[0m
        [38;5;31m│[0m                 [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(empty)[23m[0m
        [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m
            [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m5463456343[23m[0m
            [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mchild[22m[0m: [38;5;145m[3mnull[23m[0m
            [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mnodes[22m[0m
                 [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m(empty)[23m[0m
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
         ├── description: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore 
         │                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
         │                aliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui 
         │                officia deserunt mollit anim id est laborum.
         ├── postedOn: 2023-06-02T13:01:43.597697
         └── body: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore 
                   et dolore magna aliqua. 
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
                   consequat. 
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                   pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit 
                   anim id est laborum.
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore 
                   et dolore magna aliqua. 
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo 
                   consequat. 
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla 
                   pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit 
                   anim id est laborum.
''';

const String treeviewLongTextSplitMock = '''
_Map<String, dynamic>
         ├── [1mid[22m: 123
         ├── [1mtitle[22m: Lorem ipsum dolor sit amet
         ├── [1mdescription[22m: Lorem ipsum dolor sit amet, consectetur adipiscing
         │                elit, sed do eiusmod tempor incididunt ut labore 
         │                et dolore magna aliqua. Ut enim ad minim veniam, q
         │                uis nostrud exercitation ullamco laboris nisi ut a
         │                liquip ex ea commodo consequat.Excepteur sint occa
         │                ecat cupidatat non proident, sunt in culpa qui off
         │                icia deserunt mollit anim id est laborum.
         ├── [1mpostedOn[22m: 2023-06-02T13:01:43.597697
         └── [1mbody[22m: Lorem ipsum dolor sit amet, consectetur adipiscing
                   elit, sed do eiusmod temporincididunt ut labore e
                   t dolore magna aliqua. 
                   Ut enim ad minim veniam, quis nostrud exercitation
                   ullamco laboris nisi ut aliquip ex ea commodo con
                   sequat. 
                   Duis aute irure dolor in reprehenderit in voluptat
                   e velit esse cillum dolore eu fugiat nulla pariatu
                   r. Excepteur sint occaecat cupidatat non proident,
                   sunt in culpa qui officia deserunt mollit anim id
                   est laborum.
                   Lorem ipsum dolor sit amet, consectetur adipiscing
                   elit, sed do eiusmod tempor incididunt ut labore 
                   et dolore magna aliqua. 
                   Ut enim ad minim veniam, quis nostrud exercitation
                   ullamco laboris nisi ut aliquip ex ea commodo con
                   sequat. 
                   Duis aute irure dolor in reprehenderit in voluptat
                   e velit esse cillum dolore eu fugiat nulla pariatu
                   r. Excepteur sint occaecat cupidatat non proident,
                   sunt in culpa qui officia deserunt mollit anim id
                   est laborum.
''';

const String treeviewLongTextSplitAndLineBreaksMock = '''_Map<String, dynamic>
         ├── [1mid[22m: 123
         ├── [1mtitle[22m: Lorem ipsum dolor sit amet
         ├── [1mdescription[22m: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod te-
         │                mpor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
         │                uis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo con-
         │                sequat.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui o-
         │                fficia deserunt mollit anim id est laborum                                 
         ├── [1mpostedOn[22m: 2023-06-02T13:01:43.597697
         └── [1mbody[22m: Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod te-
                   mporincididunt ut labore et dolore magna aliqua.                           
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
                   aliquip ex ea commodo consequat.                                           
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolo-
                   re eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden-
                   t, sunt in culpa qui officia deserunt mollit anim id est laborum           
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod te-
                   mpor incididunt ut labore et dolore magna aliqua.                          
                   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut 
                   aliquip ex ea commodo consequat.                                           
                   Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolo-
                   re eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proiden-
                   t, sunt in culpa qui officia deserunt mollit anim id est laborum           
''';

const String treeviewLongTextSplitLineBreaksFixedMock = '''_Map<String, dynamic>
         ├── [1mid[22m: 123
         ├── [1mtitle[22m: Lorem ipsum dolor sit amet
         ├── [1mdescription[22m: Lorem ipsum dolor sit amet, consectetur adipisci-
         │                ng elit, sed do eiusmod tempor incididunt ut lab-
         │                ore et dolore magna aliqua. Ut enim ad minim ven-
         │                iam, quis nostrud exercitation ullamco laboris n-
         │                isi ut aliquip ex ea commodo consequat.Excepteur 
         │                 occaecat cupidatat non proident, sunt in culpa  
         │                qui officia deserunt mollit anim id est laborum  
         ├── [1mpostedOn[22m: 2023-06-02T13:01:43.597697
         └── [1mbody[22m: Lorem ipsum dolor sit amet, consectetur adipiscing elit-
                   , sed do eiusmod temporincididunt ut labore et dolore m-
                   agna aliqua.                                            
                   Ut enim ad minim veniam, quis nostrud exercitation ulla-
                   mco laboris nisi ut aliquip ex ea commodo consequat.    
                   Duis aute irure dolor in reprehenderit in voluptate vel-
                   it esse cillum dolore eu fugiat nulla pariatur. Excepte-
                   ur sint occaecat cupidatat non proident, sunt in culpa  
                   qui officia deserunt mollit anim id est laborum         
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit-
                   , sed do eiusmod tempor incididunt ut labore et dolore  
                   magna aliqua.                                           
                   Ut enim ad minim veniam, quis nostrud exercitation ulla-
                   mco laboris nisi ut aliquip ex ea commodo consequat.    
                   Duis aute irure dolor in reprehenderit in voluptate vel-
                   it esse cillum dolore eu fugiat nulla pariatur. Excepte-
                   ur sint occaecat cupidatat non proident, sunt in culpa  
                   qui officia deserunt mollit anim id est laborum         
''';

const String treeviewLongTextWithColorsMock = '''
\x1B[48;5;234m\x1B[38;5;209m_Map<String, dynamic>\x1B[0m
         \x1B[38;5;100m├\x1B[0m\x1B[38;5;100m──\x1B[0m \x1B[38;5;166mid\x1B[0m: \x1B[38;5;72m123\x1B[0m
         \x1B[38;5;100m├\x1B[0m\x1B[38;5;100m──\x1B[0m \x1B[38;5;166mtitle\x1B[0m: \x1B[38;5;72mLorem ipsum dolor sit amet\x1B[0m
         \x1B[38;5;100m├\x1B[0m\x1B[38;5;100m──\x1B[0m \x1B[38;5;166mdescription\x1B[0m: \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \x1B[0m
         \x1B[38;5;100m│\x1B[0m                \x1B[38;5;72met dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut \x1B[0m
         \x1B[38;5;100m│\x1B[0m                \x1B[38;5;72maliquip ex ea commodo consequat.Excepteur sint occaecat cupidatat non proident, sunt in culpa qui \x1B[0m
         \x1B[38;5;100m│\x1B[0m                \x1B[38;5;72mofficia deserunt mollit anim id est laborum.\x1B[0m
         \x1B[38;5;100m├\x1B[0m\x1B[38;5;100m──\x1B[0m \x1B[38;5;166mpostedOn\x1B[0m: \x1B[38;5;72m2023-06-02T13:01:43.597697\x1B[0m
         \x1B[38;5;100m└\x1B[0m\x1B[38;5;100m──\x1B[0m \x1B[38;5;166mbody\x1B[0m: \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore \x1B[0m
                   \x1B[38;5;72met dolore magna aliqua. \x1B[0m
                   \x1B[38;5;72mUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \x1B[0m
                   \x1B[38;5;72mconsequat. \x1B[0m
                   \x1B[38;5;72mDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \x1B[0m
                   \x1B[38;5;72mpariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \x1B[0m
                   \x1B[38;5;72manim id est laborum.\x1B[0m
                   \x1B[38;5;72mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore \x1B[0m
                   \x1B[38;5;72met dolore magna aliqua. \x1B[0m
                   \x1B[38;5;72mUt enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo \x1B[0m
                   \x1B[38;5;72mconsequat. \x1B[0m
                   \x1B[38;5;72mDuis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla \x1B[0m
                   \x1B[38;5;72mpariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit \x1B[0m
                   \x1B[38;5;72manim id est laborum.\x1B[0m
''';

const String treeviewMixedMockCenter = '''[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [1m[38;5;15m_Map<dynamic, dynamic>[22m  [0m[38;5;31m│[0m
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
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna [23m[0m
             [38;5;31m│[0m              [38;5;145m[3maliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
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

const String treeviewMixedMockLeft = '''[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [1m[38;5;15m_Map<dynamic, dynamic>[22m  [0m[38;5;31m│[0m
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
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna [23m[0m
             [38;5;31m│[0m              [38;5;145m[3maliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
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

const String treeviewMixedMockRight = '''[38;5;31m┌──────────────────────────┐[0m
[38;5;31m│[0m  [1m[38;5;15m_Map<dynamic, dynamic>[22m  [0m[38;5;31m│[0m
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
             [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mlong-text[22m[0m: [38;5;145m[3mLorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna [23m[0m
             [38;5;31m│[0m              [38;5;145m[3maliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.[23m[0m
             [38;5;31m│[0m              [38;5;145m[3mExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.[23m[0m
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

const String noHeaderList = '''[38;5;31m┌[0m[38;5;31m──[0m [38;5;145m[3m1[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3m2[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3m3[23m[0m
[38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3m4[23m[0m
''';

const String noHeaderMap = '''[38;5;31m┌[0m[38;5;31m──[0m [38;5;15m[1mUUID[22m[0m: [38;5;145m[3m1[23m[0m
[38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1muser[22m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m#123456789[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mname[22m[0m: [38;5;145m[3mJohn Doe[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m
      [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mprimary[22m[0m: [38;5;145m[3mjohn.doe@email.com[23m[0m
      [38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1msecondary[22m[0m: [38;5;145m[3mnull[23m[0m
      [38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mpersonal[22m[0m: [38;5;145m[3mjd30@email.com[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mage[22m[0m: [38;5;145m[3m30[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mphone[22m[0m: [38;5;145m[3m555-1234[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1maddresses[22m[0m
      [38;5;31m│[0m       [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m
      [38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mstreet[22m[0m: [38;5;145m[3m123 Main St[23m[0m
      [38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mcity[22m[0m: [38;5;145m[3mNew York[23m[0m
      [38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mstate[22m[0m: [38;5;145m[3mNY[23m[0m
      [38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m
      [38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mstreet[22m[0m: [38;5;145m[3m56 Flutter Avenue[23m[0m
      [38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mcity[22m[0m: [38;5;145m[3mLas Vegas[23m[0m
      [38;5;31m│[0m           [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mstate[22m[0m: [38;5;145m[3mNV[23m[0m
      [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mgroups[22m[0m
            [38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3mmoderator[23m[0m
            [38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3mauthor[23m[0m
            [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mtester[23m[0m
''';

const String noHeaderMapSingleEntry =
    '''[38;5;31m┌[0m[38;5;31m──[0m [38;5;15m[1mid[22m[0m: [38;5;145m[3m#123456789[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mname[22m[0m: [38;5;145m[3mJohn Doe[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1memail[22m[0m
[38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mprimary[22m[0m: [38;5;145m[3mjohn.doe@email.com[23m[0m
[38;5;31m│[0m     [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1msecondary[22m[0m: [38;5;145m[3mnull[23m[0m
[38;5;31m│[0m     [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mpersonal[22m[0m: [38;5;145m[3mjd30@email.com[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mage[22m[0m: [38;5;145m[3m30[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mphone[22m[0m: [38;5;145m[3m555-1234[23m[0m
[38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1maddresses[22m[0m
[38;5;31m│[0m       [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1m0[22m[0m
[38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mstreet[22m[0m: [38;5;145m[3m123 Main St[23m[0m
[38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mcity[22m[0m: [38;5;145m[3mNew York[23m[0m
[38;5;31m│[0m       [38;5;31m│[0m   [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mstate[22m[0m: [38;5;145m[3mNY[23m[0m
[38;5;31m│[0m       [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1m1[22m[0m
[38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mstreet[22m[0m: [38;5;145m[3m56 Flutter Avenue[23m[0m
[38;5;31m│[0m           [38;5;31m├[0m[38;5;31m──[0m [38;5;15m[1mcity[22m[0m: [38;5;145m[3mLas Vegas[23m[0m
[38;5;31m│[0m           [38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mstate[22m[0m: [38;5;145m[3mNV[23m[0m
[38;5;31m└[0m[38;5;31m──[0m [38;5;15m[1mgroups[22m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3mmoderator[23m[0m
      [38;5;31m├[0m[38;5;31m──[0m [38;5;145m[3mauthor[23m[0m
      [38;5;31m└[0m[38;5;31m──[0m [38;5;145m[3mtester[23m[0m
''';
