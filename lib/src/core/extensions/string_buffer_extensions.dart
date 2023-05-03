import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/theme/color/color.dart';
import 'package:ansix/src/theme/style.dart';

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
      <AnsiStyle>[],
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
      styles: <AnsiStyle>[],
      foregroundColor: color,
    );
  }

  void writeStyled(
    final String text, {
    final List<AnsiStyle> styles = const <AnsiStyle>[],
    final AnsiColor foregroundColor = AnsiColor.none,
    final AnsiColor backgroundColor = AnsiColor.none,
  }) {
    write(text.styled(
      styles,
      foregroundColor,
      backgroundColor,
    ));
  }
}
