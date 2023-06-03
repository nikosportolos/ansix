import 'dart:io';

/// **Shell**
///
/// A library that wraps Dart's [Process] features.
class Shell {
  const Shell();

  /// Runs the given [ShellCommand].
  String runCommand(final ShellCommand command) {
    try {
      return Process.runSync(
        command.executable,
        command.arguments,
        runInShell: command.runInShell,
      ).stdout.toString();
    } catch (_) {
      return '';
    }
  }
}

/// **ShellCommand**
///
/// A class that contains all required information for a
/// shell command to be executed in the attached terminal.
class ShellCommand {
  const ShellCommand(
    this.executable, {
    this.arguments = const <String>[],
    this.runInShell = true,
  });

  /// The executable provided for the process.
  final String executable;

  /// The arguments provided for the process.
  final List<String> arguments;

  /// If [runInShell] is `true`, the process will be spawned through a system
  /// shell. On Linux and OS X, `/bin/sh` is used, while
  /// `%WINDIR%\system32\cmd.exe` is used on Windows.
  final bool runInShell;
}
