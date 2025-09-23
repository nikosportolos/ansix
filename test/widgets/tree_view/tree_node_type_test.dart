import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('getType', () {
    group('TreeNodeType.primary', () {
      test('bool', () {
        const bool flag1 = true;
        const bool? flag2 = null;
        expect(TreeNodeType.getType(flag1), TreeNodeType.primary);
        expect(TreeNodeType.getType(flag2), TreeNodeType.primary);
      });

      test('num', () {
        const num number1 = 13;
        const num? number2 = null;
        expect(TreeNodeType.getType(number1), TreeNodeType.primary);
        expect(TreeNodeType.getType(number2), TreeNodeType.primary);
      });

      test('int', () {
        const int number1 = 13;
        const int? number2 = null;
        expect(TreeNodeType.getType(number1), TreeNodeType.primary);
        expect(TreeNodeType.getType(number2), TreeNodeType.primary);
      });

      test('double', () {
        const double number1 = 13.0;
        const double? number2 = null;
        expect(TreeNodeType.getType(number1), TreeNodeType.primary);
        expect(TreeNodeType.getType(number2), TreeNodeType.primary);
      });

      test('String', () {
        const String text1 = '';
        const String text2 = 'this is test message';
        const String? text3 = null;
        expect(TreeNodeType.getType(text1), TreeNodeType.primary);
        expect(TreeNodeType.getType(text2), TreeNodeType.primary);
        expect(TreeNodeType.getType(text3), TreeNodeType.primary);
      });
    });

    group('TreeNodeType.map', () {
      test('Map<String, dynamic>', () {
        const Map<String, dynamic> map = <String, dynamic>{
          'id': 123,
          'name': 'mock',
        };
        expect(TreeNodeType.getType(map), TreeNodeType.map);
      });

      test('Map<dynamic, dynamic>', () {
        const Map<dynamic, dynamic> map = <dynamic, dynamic>{
          123: 123,
          'name': 'mock',
        };
        expect(TreeNodeType.getType(map), TreeNodeType.map);
      });

      test('Map<String, dynamic>?', () {
        const Map<String, dynamic>? map = null;
        expect(TreeNodeType.getType(map), TreeNodeType.primary);
      });
    });

    group('TreeNodeType.iterable', () {
      test('List<int>', () {
        const List<int> list = <int>[1, 2, 3, 4, 5];
        expect(TreeNodeType.getType(list), TreeNodeType.iterable);
      });
      test('List<int?>', () {
        const List<int?> list = <int?>[1, 2, null, 4, 5];
        expect(TreeNodeType.getType(list), TreeNodeType.iterable);
      });
      test('List<int>?', () {
        const List<int>? list = null;
        expect(TreeNodeType.getType(list), TreeNodeType.primary);
      });

      test('Iterable<int>', () {
        const Iterable<int> list = <int>[1, 2, 3, 4, 5];
        expect(TreeNodeType.getType(list), TreeNodeType.iterable);
      });

      test('Iterable<int>', () {
        const Iterable<int>? list = null;
        expect(TreeNodeType.getType(list), TreeNodeType.primary);
      });
    });

    group('TreeNodeType.object', () {
      test('User', () {
        const User user = User(id: 123, username: 'mock');
        expect(TreeNodeType.getType(user), TreeNodeType.object);
      });
      test('User?', () {
        const User? user = null;
        expect(TreeNodeType.getType(user), TreeNodeType.primary);
      });
    });
  });
}

class User {
  const User({
    required this.id,
    required this.username,
  });

  final int id;
  final String username;
}
