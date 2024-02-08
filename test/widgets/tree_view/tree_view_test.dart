import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

import 'mocks.dart';
import 'models/node.dart';
import 'models/user.dart';

void main() {
  const AnsiTreeViewTheme theme = AnsiTreeViewTheme(
    headerTheme: AnsiTreeHeaderTheme(
      showHash: false,
      border: AnsiBorder.none,
    ),
    valueTheme: AnsiTreeNodeValueTheme(alignment: AnsiTextAlignment.center),
  );

  group('AnsiTreeView', () {
    test('List<int>', () {
      expect(
        AnsiTreeView(
          <int>[1, 2, 3, 4, 5],
          theme: theme,
        ).toString(),
        treeViewMock1,
      );
    });

    test('Map<String, dynamic>', () {
      expect(
        AnsiTreeView(
          <String, dynamic>{'id': 12312, 'username': 'AnsiX'},
          theme: theme,
        ).toString(),
        treeViewMock2,
      );
    });

    test('String', () {
      expect(
        AnsiTreeView(
          'This is a test message',
          theme: theme,
        ).toString(),
        treeViewMock3,
      );
    });

    test('Object', () {
      final User user = User(
        id: '#123456789',
        name: 'John Doe',
        phone: '555-1234',
        email: Email(
          primary: 'john.doe@email.com',
          personal: 'jd30@email.com',
        ),
        age: 30,
        groups: <String>['moderator', 'author', 'tester'],
        addresses: <Address>[
          Address(street: '123 Main St', city: 'New York', state: 'NY'),
          Address(street: '56 Flutter Avenue', city: 'Las Vegas', state: 'LV'),
        ],
        // child: child,
      );

      final String actual = AnsiTreeView(user, theme: theme).toString();
      expect(actual.unformatted, treeViewMockObject);
    });

    test('Not compact & sorted theme', () {
      final User user = User(
        id: '#123456789',
        name: 'John Doe',
        phone: '555-1234',
        email: Email(
          primary: 'john.doe@email.com',
          personal: 'jd30@email.com',
        ),
        age: 30,
        groups: <String>['moderator', 'author', 'tester'],
        addresses: <Address>[
          Address(street: '123 Main St', city: 'New York', state: 'NY'),
          Address(street: '56 Flutter Avenue', city: 'Las Vegas', state: 'LV'),
        ],
        // child: child,
      );
      final String actual = AnsiTreeView(
        user,
        theme: const AnsiTreeViewTheme(
          compact: false,
          sorted: true,
          headerTheme: AnsiTreeHeaderTheme(
            showHash: false,
            border: AnsiBorder(
              type: AnsiBorderType.all,
              style: AnsiBorderStyle.square,
            ),
          ),
          valueTheme:
              AnsiTreeNodeValueTheme(alignment: AnsiTextAlignment.center),
        ),
      ).toString();
      expect(actual.unformatted, treeViewMockExpanded);
    });

    test('nested', () {
      final Node node1 = Node(
        id: '1231231231',
        nodes: <Node>[
          Node(id: '34454354453'),
        ],
      );
      final Node node2 = Node(id: '5463456343');
      final Node node3 = Node(
        id: '7845445335',
        nodes: <Node>[
          node1,
          node2,
        ],
      );

      final String actual =
          AnsiTreeView(node3, theme: AnsiTreeViewTheme.$default()).toString();
      expect(actual.unformatted, treeviewNestedMock);
    });

    test('header with vertical padding', () {
      final Node node1 = Node(
        id: '1231231231',
        nodes: <Node>[
          Node(id: '34454354453'),
        ],
      );
      final Node node2 = Node(id: '5463456343');
      final Node node3 = Node(
        id: '7845445335',
        nodes: <Node>[
          node1,
          node2,
        ],
      );

      final String actual = AnsiTreeView(
        node3,
        theme: AnsiTreeViewTheme.$default().copyWith.headerTheme.textTheme(
              AnsiTextTheme(
                padding: AnsiPadding.vertical(1),
              ),
            ),
      ).toString();
      expect(actual.toString(), treeviewWithVerticalPaddedHeaderMock);
    });

    group('empty list/map', () {
      final Map<String, dynamic> map = <String, dynamic>{
        'map': <String, dynamic>{
          'id': 123,
          'username': 'AnsiX',
        },
        'empty_map': <String, String>{},
        'list': <String>['This', 'is', 'AnsiX'],
        'empty_list': <String>[],
      };

      test('include empty', () {
        final String actual = AnsiTreeView(map, theme: theme).toString();
        expect(actual.unformatted, treeviewEmptyMock);
      });

      test("don't include empty", () {
        final String actual = AnsiTreeView(map,
                theme: theme.copyWith.valueTheme.hideIfEmpty(true))
            .toString();
        expect(actual.unformatted, treeviewEmptyNotIncludedMock);
      });
    });

    test('mixed borders', () {
      final Map<String, dynamic> map = <String, dynamic>{
        'map': <String, dynamic>{
          'id': 123,
          'username': 'AnsiX',
        },
        'empty_map': <String, String>{},
        'list': <String>['This', 'is', 'AnsiX'],
        'empty_list': <String>[],
      };

      final String actual = AnsiTreeView(
        map,
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(
            showHash: false,
            border: AnsiBorder(type: AnsiBorderType.all),
          ),
          anchorTheme: AnsiTreeAnchorTheme(style: AnsiBorderStyle.ascii),
          valueTheme:
              AnsiTreeNodeValueTheme(alignment: AnsiTextAlignment.center),
        ),
      ).toString();
      expect(actual.unformatted, treeviewMixedBordersMock);
    });

    group('wrapping long text', () {
      test('long text', () {
        final Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'title': 'Lorem ipsum dolor sit amet',
          'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
              'nisi ut aliquip ex ea commodo consequat.'
              'Excepteur sint occaecat cupidatat non proident, '
              'sunt in culpa qui officia deserunt mollit anim id est laborum.',
          'postedOn': '2023-06-02T13:01:43.597697',
          'body': '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
        };

        final String actual = AnsiTreeView(
          map,
          theme: const AnsiTreeViewTheme(
            headerTheme: AnsiTreeHeaderTheme(
              showHash: false,
              border: AnsiBorder.none,
            ),
            valueTheme: AnsiTreeNodeValueTheme(
              wrapText: true,
              wrapOptions: WrapOptions(lineLength: 100),
              alignment: AnsiTextAlignment.center,
            ),
          ),
        ).toString();
        expect(actual.unformatted, treeviewLongTextMock);
      });

      test('long text with split words', () {
        final Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'title': 'Lorem ipsum dolor sit amet',
          'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
              'nisi ut aliquip ex ea commodo consequat.'
              'Excepteur sint occaecat cupidatat non proident, '
              'sunt in culpa qui officia deserunt mollit anim id est laborum.',
          'postedOn': '2023-06-02T13:01:43.597697',
          'body': '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
        };

        expect(
          AnsiTreeView(
            map,
            theme: const AnsiTreeViewTheme(
              headerTheme: AnsiTreeHeaderTheme(
                showHash: false,
                border: AnsiBorder.none,
              ),
              valueTheme: AnsiTreeNodeValueTheme(
                wrapText: true,
                wrapOptions: WrapOptions(
                  lineLength: 50,
                  splitWords: true,
                ),
                alignment: AnsiTextAlignment.center,
              ),
            ),
          ).toString(),
          treeviewLongTextSplitMock,
        );
      });

      test('long text with split words and line breaks', () {
        final Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'title': 'Lorem ipsum dolor sit amet',
          'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
              'nisi ut aliquip ex ea commodo consequat.'
              'Excepteur sint occaecat cupidatat non proident, '
              'sunt in culpa qui officia deserunt mollit anim id est laborum.',
          'postedOn': '2023-06-02T13:01:43.597697',
          'body': '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
        };

        expect(
          AnsiTreeView(
            map,
            theme: const AnsiTreeViewTheme(
              headerTheme: AnsiTreeHeaderTheme(
                showHash: false,
                border: AnsiBorder.none,
              ),
              valueTheme: AnsiTreeNodeValueTheme(
                wrapText: true,
                wrapOptions: WrapOptions(
                  lineLength: 75,
                  splitWords: true,
                  lineBreak: true,
                ),
                alignment: AnsiTextAlignment.center,
              ),
            ),
          ).toString(),
          treeviewLongTextSplitAndLineBreaksMock,
        );
      });

      test('long text with split words, line breaks and fixed length', () {
        final Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'title': 'Lorem ipsum dolor sit amet',
          'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
              'nisi ut aliquip ex ea commodo consequat.'
              'Excepteur sint occaecat cupidatat non proident, '
              'sunt in culpa qui officia deserunt mollit anim id est laborum.',
          'postedOn': '2023-06-02T13:01:43.597697',
          'body': '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
        };

        expect(
          AnsiTreeView(
            map,
            theme: const AnsiTreeViewTheme(
              headerTheme: AnsiTreeHeaderTheme(
                showHash: false,
                border: AnsiBorder.none,
              ),
              valueTheme: AnsiTreeNodeValueTheme(
                fixedWidth: 75,
                wrapText: true,
                wrapOptions: WrapOptions(
                  lineLength: 75,
                  splitWords: true,
                  lineBreak: true,
                ),
                alignment: AnsiTextAlignment.center,
              ),
            ),
          ).toString(),
          treeviewLongTextSplitLineBreaksFixedMock,
        );
      });

      test('long text with colors', () {
        final Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'title': 'Lorem ipsum dolor sit amet',
          'description': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
              'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
              'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
              'nisi ut aliquip ex ea commodo consequat.'
              'Excepteur sint occaecat cupidatat non proident, '
              'sunt in culpa qui officia deserunt mollit anim id est laborum.',
          'postedOn': '2023-06-02T13:01:43.597697',
          'body': '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod temporincididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.''',
        };

        final String actual = AnsiTreeView(
          map,
          theme: const AnsiTreeViewTheme(
            headerTheme: AnsiTreeHeaderTheme(
              border: AnsiBorder.none,
              showHash: false,
              textTheme: AnsiTextTheme(
                foregroundColor: AnsiColor.salmon1,
                backgroundColor: AnsiColor.grey11,
              ),
            ),
            anchorTheme: AnsiTreeAnchorTheme(color: AnsiColor.yellow6),
            keyTheme: AnsiTreeNodeKeyTheme(color: AnsiColor.darkOrange3),
            valueTheme: AnsiTreeNodeValueTheme(
              wrapText: true,
              wrapOptions: WrapOptions(lineLength: 100),
              color: AnsiColor.cadetBlue,
            ),
          ),
        ).toString();

        expect(actual, treeviewLongTextWithColorsMock);
      });
    });

    group('mixed', () {
      const MyRecord myRecord = (1, 2);
      final Map<dynamic, dynamic> map = <dynamic, dynamic>{
        'id': 123,
        'record': myRecord,
        'map': <dynamic, dynamic>{
          'num': 12,
          'int': 4324,
          'double': 43.24,
          'bool': false,
          'String': 'this is a test message',
          'record': myRecord,
          'objectWithToString':
              const MockClassWithToString(id: 1, text: 'MockClassWithToString'),
          'objectWithToJson':
              const MockClassWithToJson(id: 1, text: 'MockClassWithToJson'),
          'objectWithToMap':
              const MockClassWithToMap(id: 1, text: 'MockClassWithToMap'),
          'map': <String, dynamic>{'id': 44, 'email': 'test@email.com'},
          'list': <int>[1, 2, 3, 4, 5],
          'enum': MockEnum.value1,
        },
        123: 'this is a test message',
        'long-text': 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
            'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. '
            'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris '
            'nisi ut aliquip ex ea commodo consequat.'
            'Excepteur sint occaecat cupidatat non proident, '
            'sunt in culpa qui officia deserunt mollit anim id est laborum.',
        'enum': MockEnum.value2,
        'objectWithToString':
            const MockClassWithToString(id: 2, text: 'MockClassWithToString'),
        'objectWithToJson':
            const MockClassWithToJson(id: 2, text: 'MockClassWithToJson'),
        'objectWithToMap':
            const MockClassWithToMap(id: 2, text: 'MockClassWithToMap'),
        'list': <dynamic>[
          true,
          false,
          null,
          12,
          232.2,
          'text message',
          myRecord,
          <String, dynamic>{
            'objectWithToString': const MockClassWithToString(
                id: 3, text: 'MockClassWithToString')
          },
          <String, dynamic>{
            'objectWithToJson':
                const MockClassWithToJson(id: 3, text: 'MockClassWithToJson')
          },
          <String, dynamic>{
            'objectWithToMap':
                const MockClassWithToMap(id: 3, text: 'MockClassWithToMap')
          },
          <String, dynamic>{'id': 44, 'email': 'test@email.com'},
          <int>[1, 2, 3, 4, 5],
          const MockClassWithToString(id: 4, text: 'MockClassWithToString'),
          const MockClassWithToJson(id: 4, text: 'MockClassWithToJson'),
          const MockClassWithToMap(id: 4, text: 'MockClassWithToMap'),
          MockEnum.value3,
        ],
      };
      final AnsiTreeViewTheme compactTheme =
          AnsiTreeViewTheme.$default().copyWith.headerTheme.showHash(false);

      group('compact', () {
        for (final AnsiTextAlignment alignment in AnsiTextAlignment.values) {
          test(alignment, () {
            final String actual = AnsiTreeView(
              map,
              theme: compactTheme.copyWith.valueTheme(
                alignment: alignment,
                wrapOptions: const WrapOptions(lineLength: 120),
              ),
            ).toString();
            expect(
              actual,
              <AnsiTextAlignment, String>{
                AnsiTextAlignment.center: treeviewMixedMockCenter,
                AnsiTextAlignment.left: treeviewMixedMockLeft,
                AnsiTextAlignment.right: treeviewMixedMockRight,
              }[alignment],
            );
          });
        }
      });
      final AnsiTreeViewTheme expandedTheme =
          compactTheme.copyWith.compact(false);

      group('expanded', () {
        for (final AnsiTextAlignment alignment in AnsiTextAlignment.values) {
          test(alignment, () {
            final String actual = AnsiTreeView(
              map,
              theme: expandedTheme.copyWith.valueTheme(
                alignment: alignment,
                wrapOptions: const WrapOptions(lineLength: 120),
              ),
            ).toString();
            expect(
              actual,
              <AnsiTextAlignment, String>{
                AnsiTextAlignment.center: treeviewMixedMockCenterExpanded,
                AnsiTextAlignment.left: treeviewMixedMockLeftExpanded,
                AnsiTextAlignment.right: treeviewMixedMockRightExpanded,
              }[alignment],
            );
          });
        }
      });
    });

    group('no header', () {
      final AnsiTreeViewTheme theme = AnsiTreeViewTheme.$default()
          .copyWith
          .showListItemIndex(false)
          .copyWith(
            headerTheme: const AnsiTreeHeaderTheme(
              hideHeader: true,
              border: AnsiBorder.none,
            ),
          );

      final User user = User(
        id: '#123456789',
        name: 'John Doe',
        phone: '555-1234',
        email: Email(
          primary: 'john.doe@email.com',
          personal: 'jd30@email.com',
        ),
        age: 30,
        groups: <String>['moderator', 'author', 'tester'],
        addresses: <Address>[
          Address(
            street: '123 Main St',
            city: 'New York',
            state: 'NY',
          ),
          Address(
            street: '56 Flutter Avenue',
            city: 'Las Vegas',
            state: 'NV',
          ),
        ],
      );

      test('list with no header', () {
        expect(
          AnsiTreeView(<int>[1, 2, 3, 4], theme: theme).toString(),
          noHeaderList,
        );
      });

      test('map with no header', () {
        expect(
          AnsiTreeView(<String, Object>{'UUID': 1, 'user': user}, theme: theme)
              .toString(),
          noHeaderMap,
        );
      });

      test('map with no header and single entry', () {
        expect(
          AnsiTreeView(user, theme: theme).toString(),
          noHeaderMapSingleEntry,
        );
      });

      test('map with no header and single entry', () {
        expect(
          AnsiTreeView(<String, int>{'a': 2}, theme: theme).toString(),
          '''[38;5;31m─[0m[38;5;31m──[0m [38;5;15m[1ma[22m[0m: [38;5;145m[3m2[23m[0m\n''',
        );
      });
    });

    test('custom header', () {
      expect(
        AnsiTreeView(
          <int>[1, 2, 3, 4, 5],
          theme: const AnsiTreeViewTheme(
            headerTheme: AnsiTreeHeaderTheme(
              customHeader: 'AnsiX',
              border: AnsiBorder.none,
            ),
          ),
        ).toString(),
        '''AnsiX
 ├── 1
 ├── 2
 ├── 3
 ├── 4
 └── 5
''',
      );
    });

    group('compact/expanded', () {
      AnsiTreeViewTheme getTheme(final bool compact) {
        return AnsiTreeViewTheme(
          compact: compact,
          showListItemIndex: false,
          headerTheme: const AnsiTreeHeaderTheme(
            customHeader: 'AnsiX',
            border: AnsiBorder.none,
          ),
          valueTheme: const AnsiTreeNodeValueTheme(
            alignment: AnsiTextAlignment.left,
          ),
          keyTheme: const AnsiTreeNodeKeyTheme(
            textStyle: AnsiTextStyle(),
          ),
        );
      }

      group('enum top level', () {
        test('compact', () {
          expect(
            AnsiTreeView(MockEnum.value1, theme: getTheme(true)).toString(),
            '''AnsiX
 └── MockEnum.value1
''',
          );
        });

        test('expanded', () {
          expect(
            AnsiTreeView(MockEnum.value1, theme: getTheme(false)).toString(),
            '''AnsiX
 │
 └──── MockEnum.value1
''',
          );
        });
      });

      group('int top level', () {
        test('compact', () {
          expect(
            AnsiTreeView(123, theme: getTheme(true)).toString(),
            '''AnsiX
 └── 123
''',
          );
        });

        test('expanded', () {
          expect(
            AnsiTreeView(123, theme: getTheme(false)).toString(),
            '''AnsiX
 │
 └──── 123
''',
          );
        });
      });

      group('list top level', () {
        test('compact', () {
          expect(
            AnsiTreeView(<int>[1, 2, 3], theme: getTheme(true)).toString(),
            '''AnsiX
 ├── 1
 ├── 2
 └── 3
''',
          );
        });

        test('expanded', () {
          expect(
            AnsiTreeView(<int>[1, 2, 3], theme: getTheme(false)).toString(),
            '''AnsiX
 │
 ├──── 1
 │
 ├──── 2
 │
 └──── 3
''',
          );
        });
      });

      group('map top level', () {
        test('compact', () {
          expect(
            AnsiTreeView(<String, int>{'1': 1, '2': 2, '3': 3},
                    theme: getTheme(true))
                .toString(),
            '''AnsiX
 ├── 1: 1
 ├── 2: 2
 └── 3: 3
''',
          );
        });

        test('expanded', () {
          expect(
            AnsiTreeView(<String, int>{'1': 1, '2': 2, '3': 3},
                    theme: getTheme(false))
                .toString(),
            '''AnsiX
 │
 ├──── 1: 1
 │
 ├──── 2: 2
 │
 └──── 3: 3
''',
          );
        });
      });

      group('class top level', () {
        test('compact', () {
          expect(
            AnsiTreeView(Node(id: '1'), theme: getTheme(true)).toString(),
            '''AnsiX
 ├── id: 1
 ├── child: null
 └── nodes
     └── (empty)
''',
          );
        });

        test('expanded', () {
          expect(
            AnsiTreeView(Node(id: '1'), theme: getTheme(false)).toString(),
            '''AnsiX
 │
 ├──── id: 1
 │
 ├──── child: null
 │
 └──── nodes
       │
       └──── (empty)
''',
          );
        });
      });
    });
  });
}
