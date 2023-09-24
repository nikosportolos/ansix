import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:ansix/src/system/shell/shell.dart';

/// **Shell**
///
/// A library that wraps Dart's [Process] features.
class ShellImpl implements Shell {
  const ShellImpl();

  /// Runs the given [ShellCommand].
  @override
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
