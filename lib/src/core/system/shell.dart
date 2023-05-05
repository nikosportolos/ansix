import 'dart:io';

class Shell {
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
