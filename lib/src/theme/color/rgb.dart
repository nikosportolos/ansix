class Rgb {
  const Rgb(
    this.red,
    this.green,
    this.blue,
  );

  final int red;
  final int green;
  final int blue;

  @pragma('vm:prefer-inline')
  int get value {
    return 16 + //
        (36 * (red / 255 * 5).floor()) +
        (6 * (green / 255 * 5).floor()) +
        (blue / 255 * 5).floor();
  }

  /// Returns the relative luminance of the [RGB] color
  /// https://en.wikipedia.org/wiki/Relative_luminance
  ///
  /// https://stackoverflow.com/a/596243
  /// https://stackoverflow.com/questions/2353211/hsl-to-rgb-color-conversion
  /// https://www.rapidtables.com/convert/color/hex-to-rgb.html
  @pragma('vm:prefer-inline')
  int get relativeLuminance {
    final double r = 0.2126 * red;
    final double g = 0.7152 * green;
    final double b = 0.0722 * blue;

    // final double r = 0.2989 * red;
    // final double g = 0.5870 * green;
    // final double b = 0.1140 * blue;

    // final double r = 0.2627 * red;
    // final double g = 0.6780 * green;
    // final double b = 0.0593 * blue;

    return (r + g + b / 255 * 100).floor();
    // return (0.299 * red).floor() + (0.587 * green).floor() + (0.114 * blue).floor();
    // return sqrt(0.299 * red * red + 0.587 * green * green + 0.114 * blue * blue).floor();
  }

  @override
  String toString() {
    return '($red, $green, $blue)';
  }

  String toAnsiString() {
    return '$red;$green;$blue';
  }
}
