import 'package:ansix/ansix.dart';
import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/printer/printers.dart';
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

  group('ensureSupportsAnsi', () {
    group('windows', () {
      const List<bool> values = <bool>[true, false];
      for (final bool attachedToValidStream in values) {
        group('attachedToValidStream: $attachedToValidStream', () {
          for (final bool supportsAnsi in values) {
            group('supportsAnsi: $supportsAnsi', () {
              for (final bool detectWindowsAnsiSupport in values) {
                group('detectWindowsAnsiSupport: $detectWindowsAnsiSupport',
                    () {
                  for (final bool force in values) {
                    group('force: $force', () {
                      for (final bool silent in values) {
                        group('silent: $silent', () {
                          for (final bool? allowPrint in <bool?>[
                            null,
                            true,
                            false
                          ]) {
                            group('allowPrint: $allowPrint', () {
                              for (final ColorFormat? colorFormat
                                  in <ColorFormat?>[
                                null,
                                ...ColorFormat.values
                              ]) {
                                group('colorFormat: $colorFormat', () {
                                  test('', () {
                                    when(() => terminal.attachedToValidStream)
                                        .thenReturn(attachedToValidStream);
                                    when(() => terminal.runsOnWindows)
                                        .thenReturn(true);
                                    when(() => terminal.supportsAnsi)
                                        .thenReturn(supportsAnsi);
                                    when(() => processManager
                                            .detectWindowsAnsiSupport())
                                        .thenReturn(detectWindowsAnsiSupport);

                                    final bool supported =
                                        attachedToValidStream &&
                                            (detectWindowsAnsiSupport ||
                                                supportsAnsi);

                                    try {
                                      AnsiX.ensureSupportsAnsi(
                                        force: force,
                                        silent: silent,
                                        allowPrint: allowPrint,
                                        colorFormat: colorFormat,
                                      );
                                    } catch (e) {
                                      expect(e is AnsiXException, true);
                                    }

                                    final bool isEnabled = supported || force;
                                    final bool allowPrintValue =
                                        allowPrint ?? true;

                                    expect(AnsiX.isEnabled, isEnabled);
                                    expect(AnsiX.allowPrint, allowPrintValue);

                                    expect(
                                      AnsiX.colorFormat,
                                      colorFormat ?? ColorFormat.ansi,
                                    );

                                    expect(
                                      AnsiX.formatter is AnsiTextFormatter,
                                      isEnabled,
                                    );

                                    expect(
                                      AnsiX.formatter is RgbTextFormatter,
                                      isEnabled &&
                                          colorFormat == ColorFormat.rgb,
                                    );

                                    expect(
                                      AnsiX.formatter is StandardTextFormatter,
                                      !isEnabled,
                                    );

                                    expect(
                                      AnsiX.printer is StandardPrinter,
                                      !isEnabled && allowPrintValue,
                                    );

                                    expect(
                                      AnsiX.printer is NoOpPrinter,
                                      !allowPrintValue,
                                    );

                                    expect(
                                      AnsiX.printer is AnsiPrinter,
                                      isEnabled && allowPrintValue,
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
                      for (final bool? allowPrint in <bool?>[
                        null,
                        true,
                        false
                      ]) {
                        group('allowPrint: $allowPrint', () {
                          for (final ColorFormat? colorFormat in <ColorFormat?>[
                            null,
                            ...ColorFormat.values
                          ]) {
                            group('colorFormat: $colorFormat', () {
                              test('', () {
                                when(() => terminal.attachedToValidStream)
                                    .thenReturn(attachedToValidStream);
                                when(() => terminal.runsOnWindows)
                                    .thenReturn(false);
                                when(() => terminal.supportsAnsi)
                                    .thenReturn(supportsAnsi);
                                when(() =>
                                        processManager.determineTerminalType())
                                    .thenReturn(TerminalType.bash);

                                final bool supported = (attachedToValidStream &&
                                        supportsAnsi) ||
                                    processManager.determineTerminalType() ==
                                        TerminalType.bash;

                                try {
                                  AnsiX.ensureSupportsAnsi(
                                    force: force,
                                    silent: silent,
                                    allowPrint: allowPrint,
                                    colorFormat: colorFormat,
                                  );
                                } catch (e) {
                                  expect(e is AnsiXException, true);
                                }

                                final bool isEnabled = supported || force;
                                final bool allowPrintValue = allowPrint ?? true;

                                expect(AnsiX.isEnabled, isEnabled);
                                expect(AnsiX.allowPrint, allowPrintValue);

                                expect(
                                  AnsiX.colorFormat,
                                  colorFormat ?? ColorFormat.ansi,
                                );

                                expect(
                                  AnsiX.formatter is AnsiTextFormatter,
                                  isEnabled,
                                );

                                expect(
                                  AnsiX.formatter is RgbTextFormatter,
                                  isEnabled && colorFormat == ColorFormat.rgb,
                                );

                                expect(
                                  AnsiX.formatter is StandardTextFormatter,
                                  !isEnabled,
                                );

                                expect(
                                  AnsiX.printer is StandardPrinter,
                                  !isEnabled && allowPrintValue,
                                );

                                expect(
                                  AnsiX.printer is NoOpPrinter,
                                  !allowPrintValue,
                                );

                                expect(
                                  AnsiX.printer is AnsiPrinter,
                                  isEnabled && allowPrintValue,
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
      }
    });
  });
}
