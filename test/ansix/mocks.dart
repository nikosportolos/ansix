part of 'ansix_test.dart';

class MockProcessManager extends Mock implements ProcessManager {
  @override
  bool detectWindowsAnsiSupport();

  @override
  TerminalType determineTerminalType();
}

class MockAnsiTerminal extends Mock implements AnsiTerminal {
  MockAnsiTerminal({
    final Stdout? out,
  });

  @override
  bool get attachedToValidStream;

  @override
  bool get supportsAnsi;

  @override
  bool get runsOnWindows;

  @override
  TerminalSize get size => TerminalSize.$default;
}

class MockStdOut extends Mock implements Stdout {
  @override
  bool get supportsAnsiEscapes;
}
