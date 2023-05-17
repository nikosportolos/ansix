import 'package:ansix/src/theme/border.dart';
import 'package:ansix/src/theme/drawing/box_drawing.dart';
import 'package:test/test.dart';

void main() {
  final Map<BoxDrawingSet, String> values = <BoxDrawingSet, String>{
    BoxDrawingSet.ascii: '-|----+--||',
    BoxDrawingSet.bold: '━┃┏┓┗┛╋┻┳┫┣',
    BoxDrawingSet.double: '═║╔╗╚╝╬╩╦╣╠',
    BoxDrawingSet.none: '',
    BoxDrawingSet.rounded: '─│╭╮╰╯┼┴┬┤├',
    BoxDrawingSet.square: '─│┌┐└┘┼┴┬┤├',
  };
  final Map<BoxDrawingSet, AnsiBorderStyle> styles = <BoxDrawingSet, AnsiBorderStyle>{
    BoxDrawingSet.ascii: AnsiBorderStyle.ascii,
    BoxDrawingSet.bold: AnsiBorderStyle.bold,
    BoxDrawingSet.double: AnsiBorderStyle.double,
    BoxDrawingSet.none: AnsiBorderStyle.none,
    BoxDrawingSet.rounded: AnsiBorderStyle.rounded,
    BoxDrawingSet.square: AnsiBorderStyle.square,
  };

  group('description', () {
    for (final BoxDrawingSet set in BoxDrawingSet.values) {
      test(set.name, () {
        expect(set.toString(), values[set]);
        expect(BoxDrawingSet.fromBorderStyle(styles[set]!), set);
      });
    }
  });
}
