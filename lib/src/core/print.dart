// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

/// Prints a string representation of the object to the console
/// with the given styles and ANSI colors.
printStyled(
  final Object? object, {
  required final AnsiTextStyle textStyle,
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
}) {
  print('$object'.styled(
    textStyle,
    foreground,
    background,
  ));
}
