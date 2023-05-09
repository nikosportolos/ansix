import 'dart:async';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/theme/style.dart';
import 'package:test/test.dart';

void main() {
  const String testMessage = 'This is a test message.';

  group('print', () {
    test('printStyles', () {
      runZoned(
        () {
          printStyled(
            testMessage,
            textStyle: const AnsiTextStyle(bold: true),
          );
        },
        zoneSpecification: ZoneSpecification(
          print: (_, ZoneDelegate parent, Zone zone, String line) {
            expect(
              line,
              '${AnsiStyle.bold.startEscapeCode}'
              '$testMessage'
              '${AnsiStyle.bold.endEscapeCode}',
            );
          },
        ),
      );
    });
  });
}
