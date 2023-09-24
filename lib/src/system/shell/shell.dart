import 'package:ansix/src/system/shell/command.dart';
import 'package:ansix/src/system/shell/io.dart' if (dart.library.html) 'package:ansix/src/system/shell/web.dart';

export 'command.dart';

/// **Shell**
///
/// A library that wraps Dart's [Process] features.
abstract class Shell {
  /// Runs the given [ShellCommand].
  String runCommand(final ShellCommand command);

  factory Shell.create() => const ShellImpl();
}
