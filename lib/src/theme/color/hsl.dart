class Hsl {
  const Hsl({
    required this.hue,
    required this.saturation,
    required this.lightness,
  });

  final double hue;
  final int saturation;
  final int lightness;

  String get hueString => '$hue°';
  String get saturationString => '$saturation%';
  String get lightnessString => '$lightness%';

  @override
  String toString() {
    return 'Hue: $hueString, Saturation: $saturationString, Lightness: $lightnessString';
  }
}
