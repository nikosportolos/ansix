// coverage:ignore-file

import 'dart:async' show runZoned, ZoneSpecification;
import 'dart:io' if (dart.library.html) 'dart:html';

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

/// Returns true when running on a web browser.
bool get isWeb =>
    !Platform.isAndroid &&
    !Platform.isIOS &&
    !Platform.isMacOS &&
    !Platform.isWindows &&
    !Platform.isFuchsia &&
    !Platform.isLinux;

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
