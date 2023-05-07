part of 'border.dart';

enum AnsiBorderStyle {
  ascii(BoxDrawingSet.ascii),
  bold(BoxDrawingSet.bold),
  double(BoxDrawingSet.double),
  none(BoxDrawingSet.none),
  rounded(BoxDrawingSet.rounded),
  square(BoxDrawingSet.square);

  const AnsiBorderStyle(
    this.boxDrawingSet,
  );

  final BoxDrawingSet boxDrawingSet;
}

enum AnsiBorderType {
  all,
  header,
  inside,
  insideHorizontal,
  insideVertical,
  none,
  outside,
}
