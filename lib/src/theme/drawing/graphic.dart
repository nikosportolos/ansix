/// **GraphicDrawingSet**
enum GraphicDrawingSet {
  /// Graphic character, low density dotted (░)
  low('░'),

  /// Graphic character, medium density dotted (▒)
  medium('▒'),

  /// Graphic character, high density dotted (▓)
  high(''),

  /// Block, graphic character (█)
  block('█'),

  /// Bottom half block (▄)
  bottom('▄'),

  /// Top half block (▀)
  top('▀'),

  /// Black square (■)
  square('■');

  /// Default [GraphicDrawingSet] constructor.
  const GraphicDrawingSet(this.value);

  final String value;
}
