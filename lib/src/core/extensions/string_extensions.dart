import 'package:ansix/ansix.dart';

extension NullableStringX on String? {
  /// Returns true if the string is null or empty.
  bool get isNullOrEmpty => (this == null || this!.isEmpty);
}

extension StringX on String {
  /// Returns the string with no new line escape codes.
  String get removeNewLines => replaceAll(AnsiEscapeCodes.newLine, '');

  /// Returns the length of the string without counting any new line escape codes.
  int get lengthWithoutNewLines => removeNewLines.length;

  /// Returns the string with no whitespaces.
  String get removeWhitespaces => replaceAll(RegExp(r'\s'), '');

  /// Wraps a text and returns the lines.
  List<String> wrapText({
    final int? fixedWidth,
    required final WrapOptions wrapOptions,
  }) {
    int? lineLength;
    if (fixedWidth != null && length > fixedWidth) {
      lineLength = fixedWidth;
    }
    if (wrapOptions.lineLength != null && length > wrapOptions.lineLength!) {
      lineLength = wrapOptions.lineLength!;
    }

    if (lineLength != null) {
      return <String>[
        for (final String line in split(AnsiEscapeCodes.newLine))
          ...line.splitEvery(
            lineLength,
            splitWords: wrapOptions.splitWords,
            lineBreak: wrapOptions.lineBreak,
          )
      ];
    }

    return <String>[this];
  }

  /// Used to split a string every X characters that
  /// are defined from the [length] parameter.
  List<String> splitEvery(
    final int length, {
    final bool splitWords = false,
    final bool lineBreak = false,
  }) {
    if (!splitWords) {
      final RegExp regex = RegExp('.{1,$length}(?=\\s|\\b|\$)');
      final Iterable<Match> matches = regex.allMatches(this);
      return matches.map((Match match) => match.group(0)?.trimLeft() ?? '').toList();
    }

    if (lineBreak) {
      return splitWithLineBreaks(length);
    }

    return splitWithoutLineBreaks(length);
  }

  /// Used to wrap a text with splitting words but no line breaks.
  List<String> splitWithoutLineBreaks(final int length) {
    final List<String> result = <String>[];
    final int count = (this.length / length).ceil();

    for (int i = 0; i < count; i++) {
      final int startIndex = i * length;
      final int endIndex = (i + 1) * length;
      final bool isLastSegment = i == count - 1;
      final String segment = isLastSegment ? substring(startIndex) : substring(startIndex, endIndex);
      result.add(segment.trimLeft());
    }

    return result;
  }

  /// Used to wrap a text with splitting words and line breaks.
  /// Will add a '-' when a word is split.
  List<String> splitWithLineBreaks(final int length) {
    final List<String> result = <String>[];

    int index = 0;
    int? startIndex;
    int? endIndex;

    bool finished = false;
    while (!finished) {
      startIndex ??= index * length;
      endIndex ??= (index + 1) * length;
      if (endIndex >= this.length - 1) {
        endIndex = this.length - 1;
      }

      final String segment = substring(startIndex, endIndex);
      if (segment.trimRight().length >= length) {
        endIndex--;
        final String line = substring(startIndex, endIndex);
        result.add(line.endsWith(' ') ? line.padRight(length) : '$line-');

        if (endIndex >= this.length - 1) {
          finished = true;
          break;
        }

        startIndex = endIndex;
        endIndex += length;
      } else {
        result.add(segment.trimLeft().padRight(length));

        if (endIndex >= this.length - 1) {
          finished = true;
          break;
        }

        startIndex = null;
        endIndex = null;
      }

      index++;
    }

    return result;
  }

  (int, int) alignCenterForWidth(final int width) {
    return alignCenter(length, width);
  }
}

(int, int) alignCenter(final int textLength, final int width) {
  final int leftPadding = (width / 2 - textLength / 2).floor();
  final int rightPadding = width - textLength - leftPadding;
  return (leftPadding, rightPadding);
}
