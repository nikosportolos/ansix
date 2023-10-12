import 'dart:async';

import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

import 'mocks.dart';

testPrint({
  required final bool allowPrint,
  required Function printCallback,
  required final String expected,
}) {
  String printLine = '';
  runZoned(
    () {
      AnsiX.allowPrint = allowPrint;
      printCallback();
    },
    zoneSpecification: ZoneSpecification(
      print: (_, ZoneDelegate parent, Zone zone, String line) {
        printLine = line;
      },
    ),
  );

  expect(printLine, expected);
}

testPrintStyledText({
  required final String expected,
  required final bool allowPrint,
}) {
  testPrint(
    allowPrint: allowPrint,
    expected: expected,
    printCallback: () => AnsiX.printStyled(
      testMessage,
      textStyle: const AnsiTextStyle(bold: true),
    ),
  );
}

testPrintJson({
  final Object? object,
  required final String expected,
  required final bool allowPrint,
}) {
  testPrint(
    allowPrint: allowPrint,
    expected: expected,
    printCallback: () => AnsiX.printJson(
      jsonMap,
      textStyle: const AnsiTextStyle(bold: true),
    ),
  );
}

testPrintDataGrid({
  required final List<List<Object?>> data,
  required final AnsiGridType type,
  required final String expected,
  required final bool allowPrint,
}) {
  testPrint(
    allowPrint: allowPrint,
    expected: expected,
    printCallback: () => AnsiX.printDataGrid(data, type: type),
  );
}
