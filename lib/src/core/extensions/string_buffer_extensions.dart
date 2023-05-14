import 'package:ansix/ansix.dart';

extension StringBufferX on StringBuffer {
  void writeLines(final int lines) {
    write(newLine * lines);
  }

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

  void writeWithForegroundColor(final String text, final AnsiColor color) {
    write(text.withForegroundColor(color));
  }

  void writeWithBackgroundColor(final String text, final AnsiColor color) {
    write(text.withBackgroundColor(color));
  }

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
