// coverage:ignore-file

export 'escape_codes.dart';
export 'exceptions/exceptions.dart';
export 'extensions/extensions.dart';

/// Returns true if running on Debug mode.
bool get isDebugMode {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}
