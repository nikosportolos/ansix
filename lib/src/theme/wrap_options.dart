/// **WrapOptions**
///
/// Define how a text should be wrapped.
///
/// - [splitWords] If set to true words will be split
///   when a line needs to be wrapped.
///
/// - [lineBreak] If set to true, a '-' will be added
///   when words are split.
class WrapOptions {
  const WrapOptions({
    this.splitWords = false,
    this.lineBreak = false,
    this.lineLength,
  });

  final int? lineLength;
  final bool splitWords;
  final bool lineBreak;
}
