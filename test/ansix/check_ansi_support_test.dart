import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/system/system.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import 'ansix_test.dart';

void main() {
  final MockStdOut stdOut = MockStdOut();
  final MockProcessManager processManager = MockProcessManager();
  final MockAnsiTerminal terminal = MockAnsiTerminal(out: stdOut);
  initializeAnsiX(processManager: processManager, terminal: terminal);

  setUp(() => resetMocktailState());

  group('checkAnsiSupport', () {
    group('windows', () {
      const List<bool> values = <bool>[false];
      for (final bool attachedToValidStream in values) {
        group('attachedToValidStream: $attachedToValidStream', () {
          for (final bool supportsAnsi in values) {
            group('supportsAnsi: $supportsAnsi', () {
              for (final bool detectWindowsAnsiSupport in values) {
                group('detectWindowsAnsiSupport: $detectWindowsAnsiSupport', () {
                  final bool expected = supportsAnsi ? supportsAnsi : attachedToValidStream && detectWindowsAnsiSupport;

                  test('should return $expected', () {
                    when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                    when(() => terminal.runsOnWindows).thenReturn(true);
                    when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                    when(() => processManager.detectWindowsAnsiSupport()).thenReturn(detectWindowsAnsiSupport);
                    expect(AnsiX.checkAnsiSupport(), expected);
                  });
                });
              }
            });
          }
        });
      }
    });

    group('other', () {
      const List<bool> values = <bool>[true, false];
      for (final bool attachedToValidStream in values) {
        group('attachedToValidStream: $attachedToValidStream', () {
          for (final bool supportsAnsi in values) {
            group('supportsAnsi: $supportsAnsi', () {
              when(() => processManager.determineTerminalType()).thenReturn(TerminalType.bash);
              final bool expected = (attachedToValidStream && supportsAnsi) ||
                  processManager.determineTerminalType() == TerminalType.bash;
              test('should return $expected', () {
                when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                when(() => terminal.runsOnWindows).thenReturn(false);
                when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                expect(AnsiX.checkAnsiSupport(), expected);
              });
            });
          }
        });
      }
    });
  });
}
