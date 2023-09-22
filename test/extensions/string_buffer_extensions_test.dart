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

    test('writeLines', () {
      buffer.writeLines(10);
      expect(buffer.toString(), AnsiEscapeCodes.newLine * 10);
    });

    test('writeTabs', () {
      buffer.writeTabs(10);
      expect(buffer.toString(), AnsiEscapeCodes.tab * 10);
    });

    test('writeWithForegroundColor', () {
      const AnsiColor color = AnsiColor.cyan1;
      buffer.writeWithForegroundColor(color.name, color);
      expect(
        buffer.toString(),
        color.name.colored(foreground: color),
      );
    });

    test('writeWithBackgroundColor', () {
      const AnsiColor color = AnsiColor.cyan1;
      buffer.writeWithBackgroundColor(color.name, color);
      expect(
        buffer.toString(),
        color.name.colored(background: color),
      );
    });

    test('writeColored', () {
      const AnsiColor color = AnsiColor.cyan1;
      buffer.writeColored(color.name, foregroundColor: color);
      expect(
        buffer.toString(),
        color.name.colored(foreground: color),
      );
    });

    test('writeColoredRgb', () {
      const Rgb rgb = Rgb(0, 255, 255);
      final AnsiColor color = AnsiColor.fromRgb(rgb);

      buffer.writeColoredRgb(color.name, foreground: rgb);
      expect(
        buffer.toString(),
        color.name.coloredRgb(foreground: rgb),
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
