/// **HSL**
///
/// HSL stands for "Hue, Saturation, Lightness".
///
/// It is a color space used to describe colors, similar to RGB in that it also uses three values to describe a color.
///
/// The [hue] value is the actual color of the pixel, measured in degrees on a color wheel.
/// The range of hue is usually from 0 to 360.
///
/// The [saturation] value represents how pure or intense the hue is, and is usually measured as a percentage.
/// A saturation value of 100% means the hue is at full intensity, while a saturation of 0% is a shade of grey.
///
/// The [lightness] value is also measured as a percentage, and represents the brightness or darkness of the color.
/// A lightness of 0% represents black, while a lightness of 100% represents white.
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
    return '($hueString, $saturationString, $lightnessString)';
  }
}
