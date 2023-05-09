part of 'ansix_test.dart';

class MockProcessManager extends Mock implements ProcessManager {
  @override
  bool detectWindowsAnsiSupport();
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
}

class MockStdOut extends Mock implements Stdout {
  @override
  bool get supportsAnsiEscapes;
}
