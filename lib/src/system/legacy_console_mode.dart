/// **Windows Console Legacy Mode**
///
/// Legacy Console mode is a compatibility tool designed to help users of older command-line tools on Windows 10.
///
/// Read more:
/// - https://learn.microsoft.com/en-us/windows/console/legacymode
/// - https://techcult.com/enable-or-disable-legacy-console-for-command-prompt-and-powershell-in-windows-10/
enum LegacyConsoleMode {
  /// Legacy console mode is enabled.
  enabled,

  /// Legacy console mode is disabled.
  disabled,

  /// Unknown status of legacy console mode.
  unknown;

  /// Returns true if the legacy console mode is enabled.
  bool get isEnabled => this == LegacyConsoleMode.enabled;
}
