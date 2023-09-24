import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/src/system/terminal/io.dart';
import 'package:ansix/src/system/terminal/terminal.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockStdOut extends Mock implements Stdout {
  @override
  bool get supportsAnsiEscapes;

  @override
  bool get hasTerminal;

  @override
  int get terminalColumns;

  @override
  int get terminalLines;
}

void main() {
  final MockStdOut stdOut = MockStdOut();

  setUp(() => resetMocktailState());

  final AnsiTerminal terminal = AnsiTerminalImpl(out: stdOut);

  group('AnsiTerminal', () {
    test('runsOnWindows', () {
      expect(terminal.runsOnWindows, Platform.isWindows);
    });

    group('supportsAnsiEscapes', () {
      test('false', () {
        when(() => stdOut.supportsAnsiEscapes).thenReturn(false);
        expect(terminal.supportsAnsi, false);
      });

      test('true', () {
        when(() => stdOut.supportsAnsiEscapes).thenReturn(true);
        expect(terminal.supportsAnsi, true);
      });
    });

    test('attachedToValidStream', () {
      expect(terminal.attachedToValidStream, false); // TODO
    });

    group('TerminalSize', () {
      test('hasTerminal=false (returns default)', () {
        when(() => stdOut.hasTerminal).thenReturn(false);
        expect(terminal.size, TerminalSize.$default);
        expect(
          terminal.size.toString(),
          '(${TerminalSize.$default.columns}, ${TerminalSize.$default.lines})',
        );
      });
      test('hasTerminal=true (returns default)', () {
        when(() => stdOut.hasTerminal).thenReturn(true);
        expect(terminal.size, TerminalSize.$default);
      });
      test('hasTerminal=true', () {
        const TerminalSize size = TerminalSize(columns: 120, lines: 100);
        when(() => stdOut.hasTerminal).thenReturn(true);
        when(() => stdOut.terminalColumns).thenReturn(size.columns);
        when(() => stdOut.terminalLines).thenReturn(size.lines);
        expect(terminal.size.columns, size.columns);
        expect(terminal.size.lines, size.lines);
      });
    });
  });
}
