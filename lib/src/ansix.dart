import 'package:ansix/src/core/core.dart';
import 'package:ansix/src/formatter/formatters.dart';
import 'package:ansix/src/system/ansi_support_detection.dart';

abstract class AnsiX {
  /// Returns true if ANSI formatting is supported and enabled.
  static bool get isEnabled => _isEnabled;
  static bool _isEnabled = true;

  /// Returns the active text formatter.
  static TextFormatter get formatter => _formatter;
  static TextFormatter _formatter = AnsiTextFormatter();

  /// Enables ANSI formatting (if supported by the system).
  static void enable() {
    _isEnabled = true;
    _formatter = AnsiTextFormatter();
  }

  /// Disables ANSI formatting.
  static void disable() {
    _isEnabled = false;
    _formatter = StandardTextFormatter();
  }

  /// **Ensure that ANSI formatting is supported.**
  ///
  /// If [silent] = false, no exceptions will be thrown.
  ///
  /// If [force] = true, ANSI formatting will be enabled even if ANSI support detection failed.
  /// Use with caution, as it may lead to printing wrongly-formatted text.
  static void ensureSupportsAnsi({
    final bool silent = false,
    final bool force = false,
  }) {
    try {
      if (!AnsiSupportDetection.checkAnsiSupport()) {
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
