import 'package:ansix/ansix.dart';

void main() {
  AnsiX.printTreeView(
    <String, dynamic>{
      'map': <String, dynamic>{
        'id': 123,
        'username': 'AnsiX',
      },
      'empty_map': <String, String>{},
      'list': <String>['This', 'is', 'AnsiX'],
      'empty_list': <String>[],
    },
    theme: const AnsiTreeViewTheme(
      headerTheme: AnsiTreeHeaderTheme(showHash: false),
    ),
  );
}
