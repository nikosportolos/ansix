import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/widgets/typewriter/typewriter.dart';

void main() {
  const Duration duration = Duration(milliseconds: 200);
  final Typewriter typewriter = Typewriter(duration: duration);

  final String text = 'Hello ${'AnsiX'.bold()}';

  typewriter.print(text);
  sleep(duration);
  typewriter.delete(
    text.length,
    deleteDuration: const Duration(milliseconds: 100),
  );

  final String colored = (StringBuffer()
        ..writeWithForegroundColor('This ', AnsiColor.deepSkyBlue4)
        ..writeWithForegroundColor('is ', AnsiColor.aquamarine1)
        ..writeWithForegroundColor('a ', AnsiColor.green4)
        ..writeWithForegroundColor('multi', AnsiColor.blue3)
        ..writeWithForegroundColor('-', AnsiColor.darkOliveGreen1)
        ..writeWithForegroundColor('color ', AnsiColor.greenYellow)
        ..writeWithForegroundColor('text', AnsiColor.deepSkyBlue5)
        ..writeWithForegroundColor('.', AnsiColor.white))
      .toString();

  typewriter.print(
    colored,
    printDuration: const Duration(milliseconds: 25),
  );
  sleep(const Duration(milliseconds: 200));
  typewriter.delete(
    colored.length,
    deleteDuration: const Duration(milliseconds: 30),
  );

  final String styled = (StringBuffer()
        ..writeStyled('This ', textStyle: const AnsiTextStyle(inverse: true))
        ..writeStyled('is ', textStyle: const AnsiTextStyle(italic: true))
        ..writeStyled('a ', textStyle: const AnsiTextStyle(bold: true))
        ..writeStyled('text ', textStyle: const AnsiTextStyle(strikethrough: true))
        ..writeStyled('with ', textStyle: const AnsiTextStyle(underline: true))
        ..writeStyled('ANSI ', textStyle: const AnsiTextStyle(dim: true))
        ..writeStyled('styles', textStyle: const AnsiTextStyle(bold: true)))
      .toString();

  typewriter.print(
    styled,
    printDuration: const Duration(milliseconds: 20),
  );
  sleep(const Duration(milliseconds: 100));
  typewriter.delete(
    styled.length,
    deleteDuration: const Duration(milliseconds: 50),
  );
}
