import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/controller.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/system/system.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

part 'mocks.dart';

void main() {
  final MockStdOut stdOut = MockStdOut();
  final MockProcessManager processManager = MockProcessManager();
  final MockAnsiTerminal terminal = MockAnsiTerminal(out: stdOut);

  final AnsiXController controller = AnsiXController(
    processManager: processManager,
    terminal: terminal,
  );

  setUp(() => resetMocktailState());

  group('AnsiX', () {
    group('checkAnsiSupport', () {
      group('windows', () {
        const List<bool> values = <bool>[true, false];
        for (final bool attachedToValidStream in values) {
          group('attachedToValidStream: $attachedToValidStream', () {
            for (final bool supportsAnsi in values) {
              group('supportsAnsi: $supportsAnsi', () {
                for (final bool detectWindowsAnsiSupport in values) {
                  group('detectWindowsAnsiSupport: $detectWindowsAnsiSupport', () {
                    test('', () {
                      when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                      when(() => terminal.runsOnWindows).thenReturn(true);
                      when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                      when(() => processManager.detectWindowsAnsiSupport()).thenReturn(detectWindowsAnsiSupport);

                      expect(
                        controller.checkAnsiSupport(),
                        attachedToValidStream && (detectWindowsAnsiSupport || supportsAnsi),
                      );
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
                test('', () {
                  when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                  when(() => terminal.runsOnWindows).thenReturn(false);
                  when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                  when(() => processManager.determineTerminalType()).thenReturn(TerminalType.bash);

                  expect(
                      controller.checkAnsiSupport(),
                      (attachedToValidStream && supportsAnsi) ||
                          processManager.determineTerminalType() == TerminalType.bash);
                });
              });
            }
          });
        }
      });
    });

    group('ensureSupportsAnsi', () {
      group('windows', () {
        const List<bool> values = <bool>[true, false];
        for (final bool attachedToValidStream in values) {
          group('attachedToValidStream: $attachedToValidStream', () {
            for (final bool supportsAnsi in values) {
              group('supportsAnsi: $supportsAnsi', () {
                for (final bool detectWindowsAnsiSupport in values) {
                  group('detectWindowsAnsiSupport: $detectWindowsAnsiSupport', () {
                    for (final bool force in values) {
                      group('force: $force', () {
                        for (final bool silent in values) {
                          group('silent: $silent', () {
                            test('', () {
                              when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                              when(() => terminal.runsOnWindows).thenReturn(true);
                              when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                              when(() => processManager.detectWindowsAnsiSupport())
                                  .thenReturn(detectWindowsAnsiSupport);

                              final bool supported =
                                  attachedToValidStream && (detectWindowsAnsiSupport || supportsAnsi);

                              try {
                                controller.ensureSupportsAnsi(
                                  force: force,
                                  silent: silent,
                                );
                              } catch (e) {
                                expect(e is AnsiXException, true);
                              }

                              expect(controller.isEnabled, supported || force);
                              expect(
                                controller.formatter.runtimeType,
                                supported || force ? AnsiTextFormatter : StandardTextFormatter,
                              );
                            });
                          });
                        }
                      });
                    }
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
                for (final bool force in values) {
                  group('force: $force', () {
                    for (final bool silent in values) {
                      group('silent: $silent', () {
                        test('', () {
                          when(() => terminal.attachedToValidStream).thenReturn(attachedToValidStream);
                          when(() => terminal.runsOnWindows).thenReturn(false);
                          when(() => terminal.supportsAnsi).thenReturn(supportsAnsi);
                          when(() => processManager.determineTerminalType()).thenReturn(TerminalType.bash);

                          final bool supported = (attachedToValidStream && supportsAnsi) ||
                              processManager.determineTerminalType() == TerminalType.bash;

                          try {
                            controller.ensureSupportsAnsi(
                              force: force,
                              silent: silent,
                            );
                          } catch (e) {
                            expect(e is AnsiXException, true);
                          }
                          expect(controller.isEnabled, supported || force);
                          expect(
                            controller.formatter.runtimeType,
                            supported || force ? AnsiTextFormatter : StandardTextFormatter,
                          );
                        });
                      });
                    }
                  });
                }
              });
            }
          });
        }
      });
    });
  });
}
