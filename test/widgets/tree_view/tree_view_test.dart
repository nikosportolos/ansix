import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

import 'mocks.dart';
import 'models/node.dart';
import 'models/user.dart';

void main() {
  group('AnsiTreeView', () {
    test('List<int>', () {
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(showHash: false),
        ),
      ).format(<int>[1, 2, 3, 4, 5]);
      expect(actual, treeViewMock1);
    });

    test('Map<String, dynamic>', () {
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(showHash: false),
        ),
      ).format(<String, dynamic>{'id': 12312, 'username': 'AnsiX'});
      expect(actual, treeViewMock2);
    });

    test('String', () {
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(showHash: false),
        ),
      ).format('This is a test message');
      expect(actual, treeViewMock3);
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
          Address(
            street: '123 Main St',
            city: 'New York',
            state: 'NY',
          ),
          Address(
            street: '56 Flutter Avenue',
            city: 'Las Vegas',
            state: 'LV',
          ),
        ],
        // child: child,
      );
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(showHash: false),
        ),
      ).format(user);
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
          Address(
            street: '123 Main St',
            city: 'New York',
            state: 'NY',
          ),
          Address(
            street: '56 Flutter Avenue',
            city: 'Las Vegas',
            state: 'LV',
          ),
        ],
        // child: child,
      );
      final String actual = AnsiTreeView(
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
        ),
      ).format(user);
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

      final String actual = AnsiTreeView(
        theme: AnsiTreeViewTheme.$default(),
      ).format(node3);
      expect(actual.unformatted, treeviewNestedMock);
    });

    test('empty', () {
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
        theme: const AnsiTreeViewTheme(headerTheme: AnsiTreeHeaderTheme(showHash: false)),
      ).format(map);
      expect(actual.unformatted, treeviewEmptyMock);
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
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(
            showHash: false,
            border: AnsiBorder(type: AnsiBorderType.all),
          ),
          anchorTheme: AnsiTreeAnchorTheme(style: AnsiBorderStyle.ascii),
        ),
      ).format(map);
      expect(actual.unformatted, treeviewMixedBordersMock);
    });

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
        theme: const AnsiTreeViewTheme(
          headerTheme: AnsiTreeHeaderTheme(showHash: false),
          valueTheme: AnsiTreeNodeValueTheme(wrapText: true, wrapLength: 120),
        ),
      ).format(map);
      expect(actual.unformatted, treeviewLongTextMock);
    });
  });

  test('mixed', () {
    final Map<dynamic, dynamic> map = <dynamic, dynamic>{
      'id': 123,
      'map': <dynamic, dynamic>{
        'num': 12,
        'int': 4324,
        'double': 43.24,
        'bool': false,
        'String': 'this is a test message',
        'objectWithToString': const MockClassWithToString(id: 1, text: 'MockClassWithToString'),
        'objectWithToJson': const MockClassWithToJson(id: 1, text: 'MockClassWithToJson'),
        'objectWithToMap': const MockClassWithToMap(id: 1, text: 'MockClassWithToMap'),
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
      'objectWithToString': const MockClassWithToString(id: 2, text: 'MockClassWithToString'),
      'objectWithToJson': const MockClassWithToJson(id: 2, text: 'MockClassWithToJson'),
      'objectWithToMap': const MockClassWithToMap(id: 2, text: 'MockClassWithToMap'),
      'list': <dynamic>[
        true,
        false,
        null,
        12,
        232.2,
        'text message',
        <String, dynamic>{'objectWithToString': const MockClassWithToString(id: 3, text: 'MockClassWithToString')},
        <String, dynamic>{'objectWithToJson': const MockClassWithToJson(id: 3, text: 'MockClassWithToJson')},
        <String, dynamic>{'objectWithToMap': const MockClassWithToMap(id: 3, text: 'MockClassWithToMap')},
        <String, dynamic>{'id': 44, 'email': 'test@email.com'},
        <int>[1, 2, 3, 4, 5],
        const MockClassWithToString(id: 4, text: 'MockClassWithToString'),
        const MockClassWithToJson(id: 4, text: 'MockClassWithToJson'),
        const MockClassWithToMap(id: 4, text: 'MockClassWithToMap'),
        MockEnum.value3,
      ],
    };

    final String actual = AnsiTreeView(
      theme: const AnsiTreeViewTheme(
        headerTheme: AnsiTreeHeaderTheme(showHash: false),
        valueTheme: AnsiTreeNodeValueTheme(wrapText: true, wrapLength: 120),
      ),
    ).format(map);
    expect(actual.unformatted, treeviewMixedMock);
  });
}
