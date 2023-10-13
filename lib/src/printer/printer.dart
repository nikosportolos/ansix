import 'dart:core' as core;

abstract class Printer {
  void print(final core.Object? object) {
    // ignore: avoid_print
    core.print(object);
  }
}
