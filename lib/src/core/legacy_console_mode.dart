import 'dart:io';

import 'package:ansix/ansix.dart';
import 'package:meta/meta.dart';

/// **Windows Console Legacy Mode**
///
/// Legacy Console mode is a compatibility tool designed to help users of older command-line tools on Windows 10.
///
/// Read more:
/// - https://learn.microsoft.com/en-us/windows/console/legacymode
/// - https://techcult.com/enable-or-disable-legacy-console-for-command-prompt-and-powershell-in-windows-10/
enum LegacyConsoleMode {
  /// Legacy console mode is enabled
  enabled,

  /// Legacy console mode is disabled
  disabled,

  /// Unknown status of legacy console mode
  unknown;

  /// 0 = Enable 'Use legacy console'
  @visibleForTesting
  static final RegExp enabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x0');

  /// 1 = Disable 'Use legacy console'
  @visibleForTesting
  static final RegExp disabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x1');

  @visibleForTesting
  static const String registryKey = r'HKEY_CURRENT_USER\Console';

  /// Return legacy console mode as found in Windows Registry
  factory LegacyConsoleMode.fromWindowsRegistry() {
    try {
      final ProcessResult result = Process.runSync(
        'REG',
        <String>['QUERY', registryKey],
      );

      return LegacyConsoleMode.fromProcessResult('${result.stdout}');
    } on Exception catch (e) {
      throw AnsiXException.windowsLegacyModeError('Failed to get Legacy Console Mode from Windows Registry', e);
    }
  }

  @visibleForTesting
  factory LegacyConsoleMode.fromProcessResult(final String result) {
    if (enabledLegacyModeMatcher.hasMatch(result)) {
      return LegacyConsoleMode.enabled;
    }
    if (disabledLegacyModeMatcher.hasMatch(result)) {
      return LegacyConsoleMode.disabled;
    }
    return LegacyConsoleMode.unknown;
  }
}
