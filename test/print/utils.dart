import 'dart:async';

import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/ansi.dart';
import 'package:ansix/src/writer/ansi.dart';
import 'package:test/test.dart';

import 'mocks.dart';

_testPrint({
  required final bool allowPrint,
  required final bool allowAnsi,
  required Function printCallback,
  required final String expected,
}) {
  String printLine = '';
  runZoned(
    () {
      AnsiX.allowPrint = allowPrint;
      if (allowAnsi) {
        AnsiX.enable();
      } else {
        AnsiX.disable();
      }

      printCallback();
    },
    zoneSpecification: ZoneSpecification(
      print: (_, ZoneDelegate parent, Zone zone, String line) {
        printLine = line;
      },
    ),
  );

  expect(printLine, expected);

  expect(AnsiX.isEnabled, allowAnsi);
  expect(AnsiX.formatter is AnsiTextFormatter, allowAnsi);
  expect(AnsiX.writer is AnsiWriter, allowAnsi);
}

testPrint(
  final Object? object, {
  required final String expected,
  required final bool allowPrint,
  final bool allowAnsi = true,
}) {
  _testPrint(
    allowPrint: allowPrint,
    allowAnsi: allowAnsi,
    expected: expected,
    printCallback: () => AnsiX.print(object),
  );
}

testPrintStyledText({
  required final String expected,
  required final bool allowPrint,
  final bool allowAnsi = true,
}) {
  _testPrint(
    allowPrint: allowPrint,
    allowAnsi: allowAnsi,
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
  final bool allowAnsi = true,
}) {
  _testPrint(
    allowPrint: allowPrint,
    allowAnsi: allowAnsi,
    expected: expected,
    printCallback: () => AnsiX.printJson(
      jsonMap,
      textStyle: const AnsiTextStyle(bold: true),
    ),
  );
}

testPrintTreeView({
  final dynamic data,
  required final String expected,
  required final bool allowPrint,
  final bool allowAnsi = true,
}) {
  _testPrint(
    allowPrint: allowPrint,
    allowAnsi: allowAnsi,
    expected: expected,
    printCallback: () => AnsiX.printTreeView(
      jsonMap,
      theme: const AnsiTreeViewTheme(
        compact: true,
        sorted: true,
        headerTheme: AnsiTreeHeaderTheme(
          showHash: false,
          border: AnsiBorder(
            type: AnsiBorderType.all,
            style: AnsiBorderStyle.square,
          ),
        ),
        valueTheme: AnsiTreeNodeValueTheme(alignment: AnsiTextAlignment.center),
      ),
    ),
  );
}

testPrintDataGrid({
  required final List<List<Object?>> data,
  required final AnsiGridType type,
  required final String expected,
  required final bool allowPrint,
  final bool allowAnsi = true,
}) {
  _testPrint(
    allowPrint: allowPrint,
    allowAnsi: allowAnsi,
    expected: expected,
    printCallback: () => AnsiX.printDataGrid(data, type: type),
  );
}
