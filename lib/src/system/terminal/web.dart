import 'package:ansix/src/system/browser_detector.dart';
import 'package:ansix/src/system/terminal/terminal.dart';
import 'package:web/web.dart';

class AnsiTerminalImpl implements AnsiTerminal {
  AnsiTerminalImpl()
    : _browser = const BrowserDetector().detect(
        window.navigator.userAgent,
      );

  final Browser _browser;

  /// Returns always false on web
  @override
  bool get runsOnWindows => false;

  /// Returns true when running on a web browser
  @override
  bool get runsOnWeb => true;

  @override
  TerminalSize get size => TerminalSize.$default;

  /// Returns true if connected to a web browser
  /// that supports ANSI escape sequences.
  @override
  bool get supportsAnsi => _browser.supportsAnsi;

  @override
  bool get attachedToValidStream => supportsAnsi;
}
