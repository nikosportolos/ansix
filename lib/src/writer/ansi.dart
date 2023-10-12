import 'package:ansix/ansix.dart';
import 'package:ansix/src/writer/writer.dart';

class AnsiWriter implements Writer {
  const AnsiWriter();

  @override
  void write(final Object? object) {
    if (AnsiX.allowPrint) {
      // ignore: avoid_print
      print(object);
    }
  }
}
