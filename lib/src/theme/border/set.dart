import 'package:data_class_plugin/data_class_plugin.dart';

part 'set.gen.dart';

/// **AnsiBorderSet**
///
/// Contains properties required to draw the borders
/// of an [AnsiGrid].
///
/// - [start]
///
///   Box drawing character used at the beginning of each line.
///
/// - [line]
///
///   Box drawing character used as horizontal border line.
///
/// - [separator]
///
///   Box drawing character used between two columns.
///
/// - [end]
///
///   Box drawing character used at the end of each line.
@DataClass()
abstract class AnsiBorderSet {
  const AnsiBorderSet.ctor();

  /// Default constructor
  const factory AnsiBorderSet({
    String start,
    String line,
    String separator,
    String end,
  }) = _$AnsiBorderSetImpl;

  /// Box drawing character used at the beginning of each line.
  @DefaultValue('')
  String get start;

  /// Box drawing character used as horizontal border line.
  @DefaultValue('')
  String get line;

  /// Box drawing character used between two columns.
  @DefaultValue('')
  String get separator;

  /// Box drawing character used at the end of each line.
  @DefaultValue('')
  String get end;

  static const AnsiBorderSet empty = AnsiBorderSet();

  bool get isEmpty => this == empty;
}
