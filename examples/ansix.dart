import 'package:ansix/src/ansix.dart';

void main() async {
  AnsiX.ensureSupportsAnsi(silent: true);

  print('supportsAnsi: ${AnsiX.supportsAnsi}');
  print('isEnabled: ${AnsiX.isEnabled}');
}
