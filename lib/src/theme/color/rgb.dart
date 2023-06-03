import 'package:ansix/src/theme/color/utils.dart';

/// **RGB**
///
/// RGB stands for Red, Green, and Blue.
///
/// It is a color model used in digital imaging and
/// computer graphics to create colors by mixing different intensities of these three primary colors.
///
/// In the RGB model, each color is represented by a combination of red, green, and blue values
/// ranging from 0 to 255, where 0 represents the absence of that color and 255 represents its maximum intensity.
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
  int get value => ColorUtils.rgbTo8BitColor(red, green, blue);

  /// Returns the relative luminance of the [Rgb] color
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

    return (r + g + b / 255 * 100).floor();
  }

  String toHex() {
    final String r = red.toRadixString(16).padLeft(2, '0');
    final String g = green.toRadixString(16).padLeft(2, '0');
    final String b = blue.toRadixString(16).padLeft(2, '0');

    return '#$r$g$b';
  }

  @override
  String toString() {
    return '($red, $green, $blue)';
  }

  String toAnsiString() {
    return '$red;$green;$blue';
  }
}
