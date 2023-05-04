class Hsl {
  const Hsl(
    this.hue,
    this.saturation,
    this.lightness,
  );

  /// The "attribute of a visual sensation according to which an area appears to be similar to
  /// one of the perceived colors: red, yellow, green, and blue, or to a combination of two of them".
  final double hue;

  /// The "colorfulness of a stimulus relative to its own brightness".
  final int saturation;

  /// The "brightness relative to the brightness of a similarly illuminated white".
  final int lightness;

  String get hueString => '$hue°';
  String get saturationString => '$saturation%';
  String get lightnessString => '$lightness%';

  @override
  String toString() {
    return 'Hue: $hueString, Saturation: $saturationString, Lightness: $lightnessString';
  }
}
