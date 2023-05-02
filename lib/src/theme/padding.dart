class AnsiPadding {
  const AnsiPadding._({
    required this.top,
    required this.bottom,
    required this.left,
    required this.right,
  });

  final int top;
  final int bottom;
  final int left;
  final int right;

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
}
