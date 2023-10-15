// coverage:ignore-file

import 'dart:async' show runZoned, ZoneSpecification;

import 'package:meta/meta.dart';

export 'escape_codes.dart';
export 'exceptions/exceptions.dart';
export 'extensions/extensions.dart';

/// Returns true when running on Debug mode.
bool get isDebugMode {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}

/// Used for testing the output of a callback
/// that's printed in the console.
@visibleForTesting
String testPrintOutput(final Function callback) {
  String printedText = '';
  runZoned(
    () => callback(),
    zoneSpecification: ZoneSpecification(
      print: (_, __, ___, String line) {
        printedText = line;
      },
    ),
  );
  return printedText;
}
