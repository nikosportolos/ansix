import 'dart:io';

import 'package:ansix/src/core/legacy_console_mode.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class MockProcessResult extends Mock implements ProcessResult {}

void main() {
  group('Windows legacy console mode', () {
    test('unknown', () {
      final LegacyConsoleMode mode = LegacyConsoleMode.fromProcessResult('');
      expect(mode, LegacyConsoleMode.unknown);
    });
    test('enabled', () {
      final LegacyConsoleMode mode = LegacyConsoleMode.fromProcessResult(enabledResult);
      expect(mode, LegacyConsoleMode.enabled);
    });
    test('disabled', () {
      final LegacyConsoleMode mode = LegacyConsoleMode.fromProcessResult(disabledResult);
      expect(mode, LegacyConsoleMode.disabled);
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
