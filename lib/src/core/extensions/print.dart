import 'package:ansix/ansix.dart';

printStyled(
  final Object? object, {
  required final AnsiTextStyle textStyle,
  final AnsiColor? foregroundColor,
  final AnsiColor? backgroundColor,
}) {
  print('$object'.styled(
    textStyle,
    foregroundColor,
    backgroundColor,
  ));
}

printColored(
  final Object? object, {
  final AnsiColor? foregroundColor,
  final AnsiColor? backgroundColor,
}) {
  print('$object'.colored(
    foreground: foregroundColor,
    background: backgroundColor,
  ));
}
