part of 'border.dart';

/// **AnsiBorderStyle**
///
/// ANSI border styles are a set of characters and escape codes
/// that can be used to draw borders and frames around text
/// or other content in terminal-based applications.
///
/// Each style contains a [BoxDrawingSet].
enum AnsiBorderStyle {
  ascii(BoxDrawingSet.ascii),
  bold(BoxDrawingSet.bold),
  double(BoxDrawingSet.double),
  none(BoxDrawingSet.none),
  rounded(BoxDrawingSet.rounded),
  square(BoxDrawingSet.square);

  /// Default [AnsiBorderStyle] constructor.
  const AnsiBorderStyle(this.boxDrawingSet);

  final BoxDrawingSet boxDrawingSet;
}
