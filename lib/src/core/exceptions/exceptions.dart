import 'package:data_class_plugin/data_class_plugin.dart';
import 'package:meta/meta.dart';

part 'exceptions.gen.dart';

/// Base class for [AnsiX] exceptions
@Union()
abstract class AnsiXException implements Exception {
  const AnsiXException._();

  const factory AnsiXException.ansiNotSupported(
    final String message,
  ) = AnsiNotSupported;

  const factory AnsiXException.windowsLegacyModeError(
    final String message,
    final Object? innerException,
  ) = WindowsLegacyModeError;
}

/// This method is used to handle [AnsiXException]s that are thrown while using AnsiX.
void handleException(final AnsiXException exception) {
  // ignore: avoid_print
  print(buildExceptionMessage(exception));
}

@visibleForTesting
String buildExceptionMessage(final AnsiXException exception) {
  final StringBuffer buffer = StringBuffer()
    ..writeln()
    ..write('AnsiX Exception: ');

  exception.when(
    ansiNotSupported: (AnsiNotSupported e) {
      buffer.write(e.message);
    },
    windowsLegacyModeError: (WindowsLegacyModeError e) {
      buffer.write(e.message);
      buffer.writeln(e.innerException.toString());
    },
  );

  buffer.writeln();

  return buffer.toString();
}
