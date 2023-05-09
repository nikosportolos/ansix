import 'package:ansix/src/core/exceptions/exceptions.dart';
import 'package:ansix/src/system/system.dart';
import 'package:meta/meta.dart';

class ProcessManager {
  const ProcessManager({
    final Shell? shell,
  }) : _shell = shell ?? const Shell();

  final Shell _shell;

  /// 0 = Enable 'Use legacy console'
  @visibleForTesting
  static final RegExp enabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x0');

  /// 1 = Disable 'Use legacy console'
  @visibleForTesting
  static final RegExp disabledLegacyModeMatcher = RegExp('ForceV2( )*REG_DWORD( )*0x1');

  @visibleForTesting
  static final RegExp bashTerminalMatcher = RegExp('256');

  @visibleForTesting
  static final RegExp cmdTerminalMatcher = RegExp('CMD');

  @visibleForTesting
  static final RegExp powershellTerminalMatcher = RegExp('PowerShell');

  @visibleForTesting
  static const ShellCommand detectTerminalColorsCommand = ShellCommand(
    'tput',
    arguments: <String>['colors'],
  );

  @visibleForTesting
  static const ShellCommand detectLegacyConsoleModeCommand = ShellCommand(
    'REG',
    arguments: <String>[
      'QUERY',
      r'HKEY_CURRENT_USER\Console',
    ],
    runInShell: false,
  );

  @visibleForTesting
  static const ShellCommand detectWindowsTerminalCommand = ShellCommand(
    r'(dir 2>&1 *`|echo CMD);&<# rem #>echo PowerShell',
  );

  /// Returns true if ANSI is supported in the attached terminal
  bool detectWindowsAnsiSupport() {
    if (determineLegacyConsoleMode() == LegacyConsoleMode.disabled) {
      return true;
    }

    final TerminalType terminalType = determineTerminalType();
    if (terminalType != TerminalType.unknown && terminalType != TerminalType.cmd) {
      return true;
    }

    throw const AnsiXException.ansiNotSupported(
      'Legacy console mode is enabled. '
      'ANSI escape characters are not supported',
    );
  }

  /// Return legacy console mode as found in Windows Registry
  LegacyConsoleMode determineLegacyConsoleMode() {
    try {
      final String result = _shell.runCommand(detectLegacyConsoleModeCommand);
      if (enabledLegacyModeMatcher.hasMatch(result)) {
        return LegacyConsoleMode.enabled;
      }
      if (disabledLegacyModeMatcher.hasMatch(result)) {
        return LegacyConsoleMode.disabled;
      }
      return LegacyConsoleMode.unknown;
    } on Exception catch (e) {
      throw AnsiXException.windowsLegacyModeError('Failed to get Legacy Console Mode from Windows Registry', e);
    }
  }

  TerminalType determineTerminalType() {
    return _checkIfRunningInBash() ?? _checkIfRunningInPowershell() ?? TerminalType.unknown;
  }

  TerminalType? _checkIfRunningInBash() {
    try {
      final String result = _shell.runCommand(detectTerminalColorsCommand);
      if (bashTerminalMatcher.hasMatch(result)) {
        return TerminalType.bash;
      }
    } catch (_) {}
    return null;
  }

  TerminalType? _checkIfRunningInPowershell() {
    try {
      final String result = _shell.runCommand(detectWindowsTerminalCommand);
      if (cmdTerminalMatcher.hasMatch(result)) {
        return TerminalType.cmd;
      }
      if (powershellTerminalMatcher.hasMatch(result)) {
        return TerminalType.powershell;
      }
    } catch (_) {}
    return null;
  }
}
