import 'package:ansix/ansix.dart';
import 'package:ansix/src/formatter/ansi.dart';
import 'package:ansix/src/printer/printers.dart';
import 'package:test/test.dart';

import 'mocks.dart';

void _validatePrint({
  required final bool allowPrint,
  required final bool allowAnsi,
  required final String actual,
  required final String expected,
}) {
  expect(actual, expected);
  expect(AnsiX.isEnabled, allowAnsi);
  expect(AnsiX.allowPrint, allowPrint);
  expect(AnsiX.formatter is AnsiTextFormatter, allowAnsi);
  expect(AnsiX.printer is AnsiPrinter, allowAnsi && allowPrint);
  expect(AnsiX.printer is NoOpPrinter, !allowPrint);
  expect(AnsiX.printer is StandardPrinter, !allowAnsi && allowPrint);
}

void _testPrint({
  required final bool allowPrint,
  required final bool allowAnsi,
  required Function printCallback,
  required final String expected,
}) {
  final List<String> printLines = <String>[
    testPrintOutput(() {
      AnsiX.allowPrint = allowPrint;
      if (allowAnsi) {
        AnsiX.enable();
      } else {
        AnsiX.disable();
      }
      printCallback();
    }),
    testPrintOutput(() {
      if (allowAnsi) {
        AnsiX.enable();
      } else {
        AnsiX.disable();
      }
      AnsiX.allowPrint = allowPrint;
      printCallback();
    }),
  ];

  for (final String printLine in printLines) {
    _validatePrint(
      allowAnsi: allowAnsi,
      allowPrint: allowPrint,
      expected: expected,
      actual: printLine,
    );
  }
}

void testPrint(
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

void testPrintStyledText({
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

void testPrintJson({
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

void testPrintTreeView({
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

void testPrintDataGrid({
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
