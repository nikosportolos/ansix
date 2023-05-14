import 'package:ansix/src/ansix.dart';
import 'package:ansix/src/core/extensions/extensions.dart';
import 'package:ansix/src/theme/style.dart';

void main() {
  AnsiX.ensureSupportsAnsi();

  for (final AnsiStyle style in AnsiStyle.values) {
    final String text = 'This is a sample text with [${style.name}] style';
    // ignore: avoid_print
    print(text.withStyle(style));
  }
}
