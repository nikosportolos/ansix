import 'package:ansix/ansix.dart';

import '../../test/widgets/tree_view/mocks.dart';

void main() {
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

  AnsiX.allowPrint = true;
  AnsiX.printTreeView(
    map,
    theme: const AnsiTreeViewTheme(
      headerTheme: AnsiTreeHeaderTheme(showHash: false),
      valueTheme: AnsiTreeNodeValueTheme(wrapText: true, wrapLength: 120),
    ),
  );
}
