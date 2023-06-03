import 'package:ansix/ansix.dart';

extension StringBufferX on StringBuffer {
  /// Writes empty lines.
  void writeLines(final int lines) {
    write(AnsiEscapeCodes.newLine * lines);
  }

  /// Adds spaces of the given [length].
  void writeSpaces(
    final int length, [
    final AnsiColor backgroundColor = AnsiColor.none,
  ]) {
    write((' ' * length).styled(
      const AnsiTextStyle(),
      AnsiColor.none,
      backgroundColor,
    ));
  }

  /// Adds colors on the given [text].
  void writeColored(
    final String text, {
    final AnsiColor foregroundColor = AnsiColor.none,
    final AnsiColor backgroundColor = AnsiColor.none,
  }) {
    write(text.colored(
      foreground: foregroundColor,
      background: backgroundColor,
    ));
  }

  /// Adds [Rgb] colors on the given [text].
  void writeColoredRgb(
    final String text, {
    final Rgb? foreground,
    final Rgb? background,
  }) {
    write(text.coloredRgb(
      foreground: foreground,
      background: background,
    ));
  }

  /// Adds foreground color on the given [text].
  void writeWithForegroundColor(final String text, final AnsiColor color) {
    write(text.withForegroundColor(color));
  }

  /// Adds background color on the given [text].
  void writeWithBackgroundColor(final String text, final AnsiColor color) {
    write(text.withBackgroundColor(color));
  }

  /// Adds styles and colors on the given [text].
  void writeStyled(
    final String text, {
    required final AnsiTextStyle textStyle,
    final AnsiColor foregroundColor = AnsiColor.none,
    final AnsiColor backgroundColor = AnsiColor.none,
  }) {
    write(text.styled(
      textStyle,
      foregroundColor,
      backgroundColor,
    ));
  }
}
