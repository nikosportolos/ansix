import 'package:ansix/src/system/terminal/terminal.dart';
import 'package:browser_detector/browser_detector.dart';

class AnsiTerminalImpl implements AnsiTerminal {
  const AnsiTerminalImpl();

  /// Returns always false on web
  @override
  bool get runsOnWindows => false;

  /// Returns true when running on a web browser
  @override
  bool get runsOnWeb => false;

  @override
  TerminalSize get size => TerminalSize.$default;

  /// Returns true if connected to a web browser
  /// that supports ANSI escape sequences.
  @override
  bool get supportsAnsi {
    final Browser browser = BrowserDetector().browser;
    return browser.isChrome || browser.isEdge;
  }

  @override
  bool get attachedToValidStream => supportsAnsi;
}
