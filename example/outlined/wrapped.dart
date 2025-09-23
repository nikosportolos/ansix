// ignore_for_file: avoid_print

import 'package:ansix/ansix.dart';

void main() {
  AnsiX.ensureSupportsAnsi();
  AnsiX.allowPrint = true;

  print('\nNo text-wrap');
  print(
    AnsiOutlinedText(
      'This is a demo text with rounded borders',
      border: const AnsiBorder(
        color: AnsiColor.deepSkyBlue4,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.rounded,
      ),
      foregroundColor: AnsiColor.darkKhaki,
      wrapText: false,
      wrapOptions: const WrapOptions(
        splitWords: false,
        lineBreak: false,
      ),
      fixedWidth: 10,
    ),
  );

  print('\nWrapped text without splitting words');
  print(
    AnsiOutlinedText(
      'This is a demo text with rounded borders',
      border: const AnsiBorder(
        color: AnsiColor.deepSkyBlue4,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.rounded,
      ),
      foregroundColor: AnsiColor.darkKhaki,
      wrapText: true,
      wrapOptions: const WrapOptions(
        splitWords: false,
        lineBreak: false,
      ),
      fixedWidth: 10,
    ),
  );

  print('\nWrapped text with split words');
  print(
    AnsiOutlinedText(
      'This is a demo text with rounded borders',
      border: const AnsiBorder(
        color: AnsiColor.deepSkyBlue4,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.rounded,
      ),
      foregroundColor: AnsiColor.darkKhaki,
      wrapText: true,
      wrapOptions: const WrapOptions(
        splitWords: true,
        lineBreak: false,
      ),
      fixedWidth: 10,
    ),
  );

  print('\nWrapped text with split words and line breaks');
  print(
    AnsiOutlinedText(
      'This is a demo text with rounded borders',
      border: const AnsiBorder(
        color: AnsiColor.deepSkyBlue4,
        type: AnsiBorderType.outside,
        style: AnsiBorderStyle.rounded,
      ),
      foregroundColor: AnsiColor.darkKhaki,
      wrapText: true,
      wrapOptions: const WrapOptions(
        splitWords: true,
        lineBreak: true,
      ),
      fixedWidth: 10,
    ),
  );
}
