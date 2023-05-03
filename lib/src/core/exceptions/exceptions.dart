import 'package:data_class_plugin/data_class_plugin.dart';

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
