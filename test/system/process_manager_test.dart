import 'package:ansix/ansix.dart';
import 'package:ansix/src/system/system.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockShell extends Mock implements Shell {}

void main() {
  final MockShell mockShell = MockShell();
  final ProcessManager manager = ProcessManager(
    shell: mockShell,
  );

  tearDown(() => resetMocktailState());

  group('Detect ANSI support', () {
    test('throws', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenThrow(Exception(''));
      when(() {
        return mockShell.runCommand(ProcessManager.detectTerminalColorsCommand);
      }).thenThrow(Exception(''));
      expect(() => manager.detectWindowsAnsiSupport(), throwsA(isA<AnsiXException>()));
    });

    test('supported', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenReturn(disabledResult);
      expect(manager.determineLegacyConsoleMode(), LegacyConsoleMode.disabled);
      expect(manager.detectWindowsAnsiSupport(), true);
    });

    test('not supported', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenReturn(enabledResult);
      expect(manager.determineLegacyConsoleMode(), LegacyConsoleMode.enabled);
      expect(() => manager.detectWindowsAnsiSupport(), throwsA(isA<AnsiXException>()));
    });
  });

  group('Detect Windows Legacy Console Mode', () {
    test('throws', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenThrow(Exception(''));
      expect(() => manager.detectWindowsAnsiSupport(), throwsA(isA<AnsiXException>()));
    });

    test('unknown', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenReturn('');
      expect(manager.determineLegacyConsoleMode(), LegacyConsoleMode.unknown);
    });

    test('enabled', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenReturn(enabledResult);
      expect(manager.determineLegacyConsoleMode(), LegacyConsoleMode.enabled);
    });

    test('disabled', () {
      when(() {
        return mockShell.runCommand(ProcessManager.detectLegacyConsoleModeCommand);
      }).thenReturn(disabledResult);
      expect(manager.determineLegacyConsoleMode(), LegacyConsoleMode.disabled);
    });
  });

  group('Detect terminal type', () {
    group('bash', () {
      test('return unknown on exception', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectTerminalColorsCommand);
        }).thenThrow(Exception(''));
        expect(manager.determineTerminalType(), TerminalType.unknown);
      });

      test('bash', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectTerminalColorsCommand);
        }).thenReturn('256');
        expect(manager.determineTerminalType(), TerminalType.bash);
      });

      test('unknown', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectTerminalColorsCommand);
        }).thenReturn('');
        expect(manager.determineTerminalType(), TerminalType.unknown);
      });
    });

    group('windows', () {
      test('return unknown on exception', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectWindowsTerminalCommand);
        }).thenThrow(Exception(''));
        expect(manager.determineTerminalType(), TerminalType.unknown);
      });

      test('cmd', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectWindowsTerminalCommand);
        }).thenReturn('CMD');
        expect(manager.determineTerminalType(), TerminalType.cmd);
      });

      test('powershell', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectWindowsTerminalCommand);
        }).thenReturn('PowerShell');
        expect(manager.determineTerminalType(), TerminalType.powershell);
      });

      test('unknown', () {
        when(() {
          return mockShell.runCommand(ProcessManager.detectWindowsTerminalCommand);
        }).thenReturn('');
        expect(manager.determineTerminalType(), TerminalType.unknown);
      });
    });
  });
}

const String enabledResult = '''
  FilterOnPaste    REG_DWORD    0x1
  FontFamily    REG_DWORD    0x0
  FontSize    REG_DWORD    0x100000
  FontWeight    REG_DWORD    0x0
  ForceV2    REG_DWORD    0x0
  FullScreen    REG_DWORD    0x0
  HistoryBufferSize    REG_DWORD    0x32
  HistoryNoDup    REG_DWORD    0x0
  InsertMode    REG_DWORD    0x1
  LineSelection    REG_DWORD    0x1
''';

const String disabledResult = '''
  FilterOnPaste    REG_DWORD    0x1
  FontFamily    REG_DWORD    0x0
  FontSize    REG_DWORD    0x100000
  FontWeight    REG_DWORD    0x0
  ForceV2    REG_DWORD    0x1
  FullScreen    REG_DWORD    0x0
  HistoryBufferSize    REG_DWORD    0x32
  HistoryNoDup    REG_DWORD    0x0
  InsertMode    REG_DWORD    0x1
  LineSelection    REG_DWORD    0x1
''';
