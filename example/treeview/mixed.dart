import 'package:ansix/ansix.dart';

import '../../test/widgets/tree_view/mocks.dart';

void main() {
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
      myRecord,
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

  AnsiX.allowPrint = true;
  AnsiX.printTreeView(map, theme: AnsiTreeViewTheme.$default());
}
