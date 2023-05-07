import 'package:ansix/src/widgets/table/builder/builder.dart';

class NoneBorderRowBuilder extends AnsiTableBuilder {
  NoneBorderRowBuilder({
    required super.data,
    required super.border,
    required super.isFirstLine,
    required super.isLastLine,
  });

  /// Returns the top horizontal border for the first row
  @override
  String getTopBorder() {
    return '';
  }

  /// Returns a row formatted with vertical borders
  @override
  String getTextLineBorder() {
    return '${data.join('')}\n';
  }

  /// Returns the inline horizontal border for each row
  @override
  String getMiddleBorder() {
    return '';
  }

  /// Returns the bottom border for the last row
  @override
  String getBottomBorder() {
    return '';
  }
}