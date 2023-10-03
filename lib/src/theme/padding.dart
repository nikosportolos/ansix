/// **AnsiPadding**
///
/// Used to pad a string with lines and whitespaces.
class AnsiPadding {
  const AnsiPadding._({
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
  });

  /// Top padding - lines above the text.
  final int top;

  /// Bottom padding - lines bellow the text.
  final int bottom;

  /// Left padding - spaces before the text.
  final int left;

  /// Right padding - spaces after the text.
  final int right;

  /// Returns the total horizontal padding (left + right)
  int get horizontalPadding => left + right;

  /// Returns the total vertical padding (top + bottom)
  int get verticalPadding => top + bottom;

  /// Returns an [AnsiPadding] with no padding.
  static const AnsiPadding none = AnsiPadding._(
    bottom: 0,
    left: 0,
    right: 0,
    top: 0,
  );

  factory AnsiPadding.only({
    final int top = 0,
    final int bottom = 0,
    final int left = 0,
    final int right = 0,
  }) {
    return AnsiPadding._(
      top: top,
      bottom: bottom,
      left: left,
      right: right,
    );
  }

  factory AnsiPadding.symmetric({
    required final int vertical,
    required final int horizontal,
  }) {
    return AnsiPadding._(
      top: vertical,
      bottom: vertical,
      left: horizontal,
      right: horizontal,
    );
  }

  factory AnsiPadding.vertical(final int rows) {
    return AnsiPadding.symmetric(
      vertical: rows,
      horizontal: 0,
    );
  }

  factory AnsiPadding.horizontal(final int spaces) {
    return AnsiPadding.symmetric(
      vertical: 0,
      horizontal: spaces,
    );
  }

  @override
  String toString() {
    return '$top;$bottom;$left;$right';
  }

  @override
  bool operator ==(Object other) {
    if (other is! AnsiPadding) {
      return false;
    }
    return top == other.top &&
        bottom == other.bottom &&
        right == other.right &&
        left == other.left;
  }

  AnsiPadding operator +(final AnsiPadding padding) {
    return AnsiPadding._(
      top: top + padding.top,
      bottom: bottom + padding.bottom,
      right: right + padding.right,
      left: left + padding.left,
    );
  }

  @override
  int get hashCode => super.hashCode + top + bottom + right + left;
}
