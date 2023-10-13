import 'package:ansix/src/core/extensions/ansi_string_extensions.dart';
import 'package:ansix/src/printer/printer.dart';

export 'printer.dart';

/// ANSI text printer
///
/// Used for printing text with ANSI formatting.
class AnsiPrinter extends Printer {}

/// Standard text printer
///
/// Used for printing plain text with no formatting.
class StandardPrinter extends Printer {
  @override
  void print(final Object? object) {
    super.print(object.toString().unformatted);
  }
}

/// No operational printer
///
/// Used when printing to console is not allowed.
class NoOpPrinter extends Printer {
  @override
  void print(final Object? object) {}
}
