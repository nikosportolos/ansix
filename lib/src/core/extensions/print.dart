// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

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

printColored(
  final Object? object, {
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
}) {
  print('$object'.colored(
    foreground: foreground,
    background: background,
  ));
}
