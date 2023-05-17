import 'package:ansix/src/core/exceptions/exceptions.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/system/process_manager.dart';
import 'package:ansix/src/system/terminal.dart';

class AnsiXController {
  AnsiXController({
    final ProcessManager? processManager,
    final AnsiTerminal? terminal,
  })  : _processManager = processManager ?? const ProcessManager(),
        _terminal = terminal ?? AnsiTerminal();

  final ProcessManager _processManager;
  final AnsiTerminal _terminal;

  /// Returns true if ANSI formatting is supported and enabled.
  bool get isEnabled => _isEnabled;
  bool _isEnabled = true;

  /// Returns the active text formatter.
  TextFormatter get formatter => _formatter;
  TextFormatter _formatter = AnsiTextFormatter();

  /// Enables ANSI formatting (if supported by the system).
  void enable() {
    _isEnabled = true;
    _formatter = AnsiTextFormatter();
  }

  /// Disables ANSI formatting.
  void disable() {
    _isEnabled = false;
    _formatter = StandardTextFormatter();
  }

  /// Returns true if ANSI escape characters are supported in the attached terminal.
  bool checkAnsiSupport() {
    final bool attachedToValidStream = _terminal.attachedToValidStream;
    final bool isSupported = attachedToValidStream && _terminal.supportsAnsi;

    if (!isSupported) {
      if (_terminal.runsOnWindows) {
        return attachedToValidStream && _processManager.detectWindowsAnsiSupport();
      }

      return attachedToValidStream || _processManager.determineTerminalType() == TerminalType.bash;
    }

    return isSupported;
  }

  /// **Ensure that ANSI formatting is supported.**
  ///
  /// If [silent] = false, no exceptions will be thrown.
  ///
  /// If [force] = true, ANSI formatting will be enabled even if ANSI support detection failed.
  /// Use with caution, as it may lead to printing wrongly-formatted text.
  void ensureSupportsAnsi({
    final bool silent = false,
    final bool force = false,
  }) {
    try {
      if (!checkAnsiSupport()) {
        throw const AnsiXException.ansiNotSupported(
          'ANSI escape characters are not supported.',
        );
      }

      enable();
    } on AnsiXException catch (e) {
      if (force) {
        enable();
        return;
      }

      disable();
      if (silent) {
        handleException(e);
        return;
      }
      rethrow;
    }
  }
}
