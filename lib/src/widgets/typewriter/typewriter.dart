import 'dart:io';

import 'package:ansix/ansix.dart';

/// **Typewriter**
@Deprecated('This widget is used for demo purposes only.')
class Typewriter {
  Typewriter({
    required this.duration,
  });

  final Duration duration;

  void print(
    final String text, {
    final Duration? printDuration,
  }) {
    for (int i = 0; i < text.length; i++) {
      stdout.write(text[i]);
      sleep(printDuration ?? duration);
    }
  }

  void delete(
    final int characters, {
    final Duration? deleteDuration,
  }) {
    for (int i = 0; i < characters; i++) {
      stdout.write(AnsiEscapeCodes.backspace);
      sleep(deleteDuration ?? duration);
    }
  }
}
