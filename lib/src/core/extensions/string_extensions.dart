import 'package:ansix/ansix.dart';

extension StringX on String {
  /// Used to split a string every X characters that are defined from the [length] parameter.
  List<String> splitEvery(final int length) {
    final RegExp regex = RegExp('.{1,$length}(?=\\s|\$)');
    final Iterable<Match> matches = regex.allMatches(this);
    return matches.map((Match match) => match.group(0)?.trim() ?? '').toList();
  }
}

extension AnsiString on String {
  /// Returns the string with no ANSI styles and colors.
  String get unformatted => replaceAll(AnsiText.ansiMatcher, '');

  /// Returns the length of the string with no ANSI styles and colors.
  int get unformattedLength => unformatted.length;

  /// Returns the string with no new line escape codes.
  String get removeNewLines => replaceAll(AnsiEscapeCodes.newLine, '');

  /// Returns the length of the string without counting any new line escape codes.
  int get lengthWithoutNewLines => removeNewLines.length;

  /// Adds an [AnsiStyle].
  String withStyle(final AnsiStyle style) {
    return AnsiX.formatter.withStyle(this, style);
  }

  /// Adds [AnsiTextStyle] and colors.
  String styled(
    final AnsiTextStyle textStyle, [
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  ]) {
    String text = this;
    for (final AnsiStyle style in textStyle.styles) {
      text = text.withStyle(style);
    }
    return text.colored(
      foreground: foreground,
      background: background,
    );
  }

  /// Adds foreground color.
  String withForegroundColor(final AnsiColor color) {
    return AnsiX.formatter.withColor(this, foreground: color);
  }

  /// Adds background color.
  String withBackgroundColor(final AnsiColor color) {
    return AnsiX.formatter.withColor(this, background: color);
  }

  /// Adds colors.
  String colored({
    final AnsiColor foreground = AnsiColor.none,
    final AnsiColor background = AnsiColor.none,
  }) {
    return AnsiX.formatter.withColor(
      this,
      foreground: foreground,
      background: background,
    );
  }

  /// Adds [Rgb] colors.
  String coloredRgb({
    final Rgb? foreground,
    final Rgb? background,
  }) {
    return AnsiX.formatter.withColorRgb(
      this,
      foreground: foreground == null ? AnsiColor.none : AnsiColor.fromRgb(foreground),
      background: background == null ? AnsiColor.none : AnsiColor.fromRgb(background),
    );
  }
}

extension AnsiXShortcuts on String {
  /// Adds [AnsiStyle.bold] text style on a string.
  String bold() => withStyle(AnsiStyle.bold);

  /// Adds [AnsiStyle.dim] text style on a string.
  String dim() => withStyle(AnsiStyle.dim);

  /// Adds [AnsiStyle.italic] text style on a string.
  String italic() => withStyle(AnsiStyle.italic);

  /// Adds [AnsiStyle.underline] text style on a string.
  String underline() => withStyle(AnsiStyle.underline);

  /// Adds [AnsiStyle.strikethrough] text style on a string.
  String strikethrough() => withStyle(AnsiStyle.strikethrough);

  /// Adds [AnsiColor.black] foreground color on a string.
  String black() => colored(foreground: AnsiColor.black);

  /// Adds [AnsiColor.red] foreground color on a string.
  String red() => colored(foreground: AnsiColor.red);

  /// Adds [AnsiColor.green] foreground color on a string.
  String green() => colored(foreground: AnsiColor.green);

  /// Adds [AnsiColor.yellow] foreground color on a string.
  String yellow() => colored(foreground: AnsiColor.yellow);

  /// Adds [AnsiColor.blue] foreground color on a string.
  String blue() => colored(foreground: AnsiColor.blue);

  /// Adds [AnsiColor.fuchsia] foreground color on a string.
  String fuchsia() => colored(foreground: AnsiColor.fuchsia);

  /// Adds [AnsiColor.aqua] foreground color on a string.
  String aqua() => colored(foreground: AnsiColor.aqua);

  /// Adds [AnsiColor.white] foreground color on a string.
  String white() => colored(foreground: AnsiColor.white);
}
