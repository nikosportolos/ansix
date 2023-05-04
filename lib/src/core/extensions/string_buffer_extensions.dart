import 'package:ansix/ansix.dart';

extension StringBufferX on StringBuffer {
  void writeNewLine() {
    writeln();
  }

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
    final String text,
    final AnsiColor color,
  ) {
    writeStyled(
      text,
      textStyle: const AnsiTextStyle(),
      foregroundColor: color,
    );
  }

  void writeStyled(
    final String text, {
    required final AnsiTextStyle textStyle,
    final AnsiColor foregroundColor = AnsiColor.none,
    final AnsiColor backgroundColor = AnsiColor.none,
  }) {
    write(
      text.styled(textStyle, foregroundColor, backgroundColor),
    );
  }
}
