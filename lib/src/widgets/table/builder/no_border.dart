import 'package:ansix/src/widgets/table/builder/builder.dart';

/// **NoBorderTableBuilder**
///
/// Builds a table with no borders.
///
/// Example:
/// ```dart
/// Name           Hex            RGB
/// Red            #ff0000        (255, 0, 0)
/// Green          #008000        (0, 128, 0)
/// Blue           #0000ff        (0, 0, 255)
/// ```
class NoBorderTableBuilder extends AnsiTableBuilder {
  @override
  String get topBorder => '';

  @override
  String get textLineBorder => '${data.join(' ')}\n';

  @override
  String get middleBorder => '';

  @override
  String get bottomBorder => '';
}
