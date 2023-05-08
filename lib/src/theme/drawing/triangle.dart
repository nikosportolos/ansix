enum TriangleSet {
  /// Black **up**-pointing triangle (▲)
  up('▲'),

  /// Black **down**-pointing triangle (▼)
  down('▼'),

  /// Black **left**-pointing pointer (◄)
  left('◄'),

  /// Black **right**-pointing pointer (►)
  right('►');

  const TriangleSet(this.value);

  final String value;
}
