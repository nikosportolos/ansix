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
    if (red == green && green == blue) {
      if (red < 8) {
        return 16;
      }
      if (red > 248) {
        return 231;
      }
      return (((red - 8) / 247) * 24).floor() + 232;
    }
    return 16 + //
        (36 * (red / 255 * 5).floor()) +
        (6 * (green / 255 * 5).floor()) +
        (blue / 255 * 5).floor();
  }

  @override
  String toString() {
    return '($red, $green, $blue)';
  }

  String toAnsiString() {
    return '$red;$green;$blue';
  }
}
