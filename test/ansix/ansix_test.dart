import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/printer/printers.dart';
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
        buildExceptionMessage(AnsiXException.windowsLegacyModeError(
            'error', Exception('exception'))),
        '\nAnsiX Exception: errorException: exception\n\n',
      );
    });

    group('enable/disable ANSI formatting', () {
      test('enable', () {
        AnsiX.enable();

        expect(AnsiX.isEnabled, isTrue);
        expect(AnsiX.formatter is AnsiTextFormatter, isTrue);
        expect(AnsiX.formatter is StandardTextFormatter, isFalse);
        expect(AnsiX.formatter is RgbTextFormatter, isFalse);
        expect(AnsiX.printer is AnsiPrinter, isTrue);
        expect(AnsiX.printer is StandardPrinter, isFalse);
      });

      test('disable', () {
        AnsiX.disable();

        expect(AnsiX.isEnabled, isFalse);
        expect(AnsiX.formatter is AnsiTextFormatter, isFalse);
        expect(AnsiX.formatter is StandardTextFormatter, isTrue);
        expect(AnsiX.formatter is RgbTextFormatter, isFalse);
        expect(AnsiX.printer is AnsiPrinter, isFalse);
        expect(AnsiX.printer is StandardPrinter, isTrue);
      });

      test('enable (RGB)', () {
        AnsiX.colorFormat = ColorFormat.rgb;
        AnsiX.enable();

        expect(AnsiX.isEnabled, isTrue);
        expect(AnsiX.formatter is AnsiTextFormatter, isTrue);
        expect(AnsiX.formatter is StandardTextFormatter, isFalse);
        expect(AnsiX.formatter is RgbTextFormatter, isTrue);
        expect(AnsiX.printer is AnsiPrinter, isTrue);
        expect(AnsiX.printer is StandardPrinter, isFalse);
      });

      test('disable (RGB)', () {
        AnsiX.colorFormat = ColorFormat.rgb;
        AnsiX.disable();

        expect(AnsiX.isEnabled, isFalse);
        expect(AnsiX.formatter is AnsiTextFormatter, isFalse);
        expect(AnsiX.formatter is StandardTextFormatter, isTrue);
        expect(AnsiX.formatter is RgbTextFormatter, isFalse);
        expect(AnsiX.printer is AnsiPrinter, isFalse);
        expect(AnsiX.printer is StandardPrinter, isTrue);
      });
    });
  });
}
