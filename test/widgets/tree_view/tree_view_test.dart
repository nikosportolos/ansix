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
          classTheme: AnsiTreeClassTheme(showHash: false),
        ),
      ).format(<int>[1, 2, 3, 4, 5]);
      expect(actual, treeViewMock1);
    });

    test('Map<String, dynamic>', () {
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          classTheme: AnsiTreeClassTheme(showHash: false),
        ),
      ).format(<String, dynamic>{'id': 12312, 'username': 'AnsiX'});
      expect(actual, treeViewMock2);
    });

    test('String', () {
      final String actual = AnsiTreeView(
        theme: const AnsiTreeViewTheme(
          classTheme: AnsiTreeClassTheme(showHash: false),
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
          classTheme: AnsiTreeClassTheme(showHash: false),
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
          classTheme: AnsiTreeClassTheme(
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
        theme: const AnsiTreeViewTheme(classTheme: AnsiTreeClassTheme(showHash: false)),
      ).format(map);
      expect(actual.unformatted, treeviewEmptyMock);
    });
  });
}
