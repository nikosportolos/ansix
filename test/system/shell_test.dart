import 'package:ansix/src/system/shell.dart';
import 'package:test/test.dart';

void main() {
  const Shell shell = Shell();
  const String message = 'AnsiX';

  group('Shell', () {
    test('echo $message', () {
      final String result = shell.runCommand(
        const ShellCommand(
          'echo',
          arguments: <String>[message],
          runInShell: true,
        ),
      );

      expect(result.isNotEmpty, true);
      expect(result.replaceAll('\r', '').replaceAll('\n', ''), message);
    });
  });
}
