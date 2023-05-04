export 'escape_codes.dart';
export 'exceptions/exceptions.dart';
export 'extensions/extensions.dart';
export 'legacy_console_mode.dart';

bool get isDebugMode {
  bool value = false;
  assert(() {
    value = true;
    return true;
  }());
  return value;
}
