import 'dart:io';

/// **Shell**
///
/// A library that wraps Dart's [Process] features.
class Shell {
  const Shell();

  String runCommand(final ShellCommand command) {
    try {
      return Process.runSync(
        command.command,
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
    this.command, {
    this.arguments = const <String>[],
    this.runInShell = true,
  });

  final String command;
  final List<String> arguments;
  final bool runInShell;
}
