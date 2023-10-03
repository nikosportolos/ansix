// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'exceptions.dart';

extension $AnsiXException on AnsiXException {
  R when<R>({
    required R Function(AnsiNotSupported value) ansiNotSupported,
    required R Function(WindowsLegacyModeError value) windowsLegacyModeError,
  }) {
    if (this is AnsiNotSupported) {
      return ansiNotSupported(this as AnsiNotSupported);
    }
    if (this is WindowsLegacyModeError) {
      return windowsLegacyModeError(this as WindowsLegacyModeError);
    }
    throw UnimplementedError('$runtimeType is not generated by this plugin');
  }

  R maybeWhen<R>({
    R Function(AnsiNotSupported value)? ansiNotSupported,
    R Function(WindowsLegacyModeError value)? windowsLegacyModeError,
    required R Function() orElse,
  }) {
    if (ansiNotSupported != null && this is AnsiNotSupported) {
      return ansiNotSupported(this as AnsiNotSupported);
    }
    if (windowsLegacyModeError != null && this is WindowsLegacyModeError) {
      return windowsLegacyModeError(this as WindowsLegacyModeError);
    }
    return orElse();
  }
}

class AnsiNotSupported extends AnsiXException {
  const AnsiNotSupported(
    this.message,
  ) : super._();

  final String message;

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      message,
    ]);
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is AnsiNotSupported &&
            runtimeType == other.runtimeType &&
            message == other.message;
  }

  @override
  String toString() {
    String toStringOutput = 'AnsiNotSupported{<optimized out>}';
    assert(() {
      toStringOutput = 'AnsiNotSupported@<$hexIdentity>{message: $message}';
      return true;
    }());
    return toStringOutput;
  }
}

class WindowsLegacyModeError extends AnsiXException {
  const WindowsLegacyModeError(
    this.message,
    this.innerException,
  ) : super._();

  final String message;

  final Object? innerException;

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      message,
      innerException,
    ]);
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is WindowsLegacyModeError &&
            runtimeType == other.runtimeType &&
            message == other.message &&
            innerException == other.innerException;
  }

  @override
  String toString() {
    String toStringOutput = 'WindowsLegacyModeError{<optimized out>}';
    assert(() {
      toStringOutput =
          'WindowsLegacyModeError@<$hexIdentity>{message: $message, innerException: $innerException}';
      return true;
    }());
    return toStringOutput;
  }
}
