import 'package:data_class_plugin/data_class_plugin.dart';

/// Base class for [AnsiX] exceptions
@Union()
abstract class AnsiXException implements Exception {
  const AnsiXException(this.message);
  final String message;
}

class AnsiNotSupported implements AnsiXException {
  const AnsiNotSupported(this.message);

  @override
  final String message;
}
