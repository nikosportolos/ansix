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
enum WindowsLegacyMode {
  /// Legacy console mode is enabled
  enabled,

  /// Legacy console mode is disabled
  disabled,

  /// Unknown status of legacy console mode
  unknown;

  @visibleForTesting
  static final RegExp enabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x0');

  @visibleForTesting
  static final RegExp disabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x1');

  factory WindowsLegacyMode.fromWindowsRegistry() {
    if (!Platform.isWindows) {
      return WindowsLegacyMode.unknown;
    }

    try {
      final ProcessResult result = Process.runSync(
        'REG',
        <String>[
          'QUERY',
          r'HKEY_CURRENT_USER\Console',
        ],
      );

      return WindowsLegacyMode.fromProcessResult(result);
    } on Exception catch (e) {
      throw AnsiXException.windowsLegacyModeError('Failed to get Legacy Console Mode from Windows Registry', e);
    }
  }

  @visibleForTesting
  factory WindowsLegacyMode.fromProcessResult(final ProcessResult result) {
    if (enabledLegacyModeMatcher.hasMatch(result.stdout)) {
      return WindowsLegacyMode.enabled;
    }
    if (disabledLegacyModeMatcher.hasMatch(result.stdout)) {
      return WindowsLegacyMode.disabled;
    }
    return WindowsLegacyMode.unknown;
  }
}
