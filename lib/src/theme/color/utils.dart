abstract class ColorUtils {
  /// Map the RGB color to the nearest color in the 256-color terminal color space
  ///
  /// This formula maps the 24-bit RGB color space (which consists of 16,777,216 possible colors)
  /// to the 256-color terminal color space (which consists of 256 possible colors).
  ///
  /// The first 16 colors in the terminal color space are the basic ANSI colors,
  /// and the remaining 240 colors are divided into six color cubes, each with 216 colors.
  static int rgbTo8BitColor(
    final int r,
    final int g,
    final int b,
  ) {
    return 16 + //
        (36 * (r / 255 * 5).floor()) +
        (6 * (g / 255 * 5).floor()) +
        (b / 255 * 5).floor();
  }

  static int greyscaleRgbTo8BitColor(final int grey) {
    return 232 + ((grey - 8) ~/ 10);
  }
}
