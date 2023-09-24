import 'package:ansix/src/system/terminal/terminal.dart';

class AnsiTerminalImpl implements AnsiTerminal {
  const AnsiTerminalImpl();

  @override
  bool get attachedToValidStream => true;

  @override
  bool get runsOnWindows => false;

  @override
  TerminalSize get size => TerminalSize.$default;

  @override
  bool get supportsAnsi => true;
}
