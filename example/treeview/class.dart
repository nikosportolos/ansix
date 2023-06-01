import 'package:ansix/ansix.dart';

import 'models/user.dart';

void main() {
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
    // child: child,
  );

  AnsiX.printTreeView(user, theme: AnsiTreeViewTheme.$default());
}
