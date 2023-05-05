import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  final StringBuffer buffer = StringBuffer();

  tearDown(() => buffer.clear());

  group('StringBuffer', () {
    test('writeSpaces', () {
      buffer.writeSpaces(10);
      expect(buffer.toString(), ' ' * 10);
    });

    test('writeSpaces', () {
      buffer.writeLines(10);
      expect(buffer.toString(), newLine * 10);
    });

    test('writeColored', () {
      const AnsiColor color = AnsiColor.cyan1;
      buffer.writeColored(color.name, color);
      expect(
        buffer.toString(),
        color.name.colored(foreground: color),
      );
    });

    test('writeStyledText', () {
      const AnsiColor color = AnsiColor.cyan1;
      const AnsiColor color1 = AnsiColor.red;
      const AnsiTextStyle style = AnsiTextStyle(
        bold: true,
        italic: true,
        underline: true,
        strikethrough: true,
      );
      buffer.writeStyled(
        color.name,
        textStyle: style,
        foregroundColor: color,
        backgroundColor: color1,
      );
      expect(
        buffer.toString(),
        color.name.styled(style, color, color1),
      );
    });
  });
}
