import 'dart:io';

import 'package:ansix/src/system/terminal.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockStdOut extends Mock implements Stdout {
  @override
  bool get supportsAnsiEscapes;
}

void main() {
  final MockStdOut stdOut = MockStdOut();

  setUp(() => resetMocktailState());

  IOOverrides.runZoned(
    () {
      final AnsiTerminal terminal = AnsiTerminal(out: stdOut);

      group('AnsiTerminal', () {
        test('runsOnWindows', () {
          expect(terminal.runsOnWindows, Platform.isWindows);
        });

        test('supportsAnsiEscapes=false', () {
          when(() => stdOut.supportsAnsiEscapes).thenReturn(false);
          expect(terminal.supportsAnsi, false);
        });

        test('supportsAnsiEscapes=true', () {
          when(() => stdOut.supportsAnsiEscapes).thenReturn(true);
          expect(terminal.supportsAnsi, true);
        });

        test('attachedToValidStream', () {
          expect(terminal.attachedToValidStream, false); // TODO
        });
      });
    },
    stdout: () => stdOut,
  );
}
