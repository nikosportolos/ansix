import 'package:ansix/src/controller.dart';
import 'package:ansix/src/formatter/formatter.dart';

abstract class AnsiX {
  static final AnsiXController _controller = AnsiXController();

  /// Returns true if ANSI formatting is supported and enabled.
  static bool get isEnabled => _controller.isEnabled;

  /// Returns the active text formatter.
  static TextFormatter get formatter => _controller.formatter;

  /// Enables ANSI formatting (if supported by the system).
  static void enable() {
    _controller.enable();
  }

  /// Disables ANSI formatting.
  static void disable() {
    _controller.disable();
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
    _controller.ensureSupportsAnsi(
      silent: silent,
      force: force,
    );
  }
}
