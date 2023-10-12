import 'package:ansix/ansix.dart';
import 'package:ansix/src/writer/writer.dart';

class NoAnsiWriter implements Writer {
  const NoAnsiWriter();

  @override
  void write(final Object? object) {
    if (AnsiX.allowPrint) {
      // ignore: avoid_print
      print(object.toString().unformatted);
    }
  }
}
