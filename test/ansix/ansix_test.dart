import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/system/system.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

part 'mocks.dart';

void main() {
  group('AnsiX', () {
    test('terminal size', () {
      final MockAnsiTerminal terminal = MockAnsiTerminal(out: MockStdOut());
      initializeAnsiX(processManager: MockProcessManager(), terminal: terminal);
      expect(AnsiX.size, TerminalSize.$default);
    });

    test('buildExceptionMessage', () {
      expect(
        buildExceptionMessage(const AnsiXException.ansiNotSupported('error')),
        '\nAnsiX Exception: error\n',
      );
      expect(
        buildExceptionMessage(AnsiXException.windowsLegacyModeError('error', Exception('exception'))),
        '\nAnsiX Exception: errorException: exception\n\n',
      );
    });
  });
}
