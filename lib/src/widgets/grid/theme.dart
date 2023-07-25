import 'package:ansix/ansix.dart';
import 'package:data_class_plugin/data_class_plugin.dart';

part 'theme.gen.dart';

/// **AnsiGridTheme**
///
/// A collection of styling properties, borders and colors,
/// that will be used to style an [AnsiGrid].
///
/// - [border]
///
///   The [AnsiBorder] that will be used to draw the [AnsiGrid] with.
///
/// - [headerTextTheme]
///
///   The default [AnsiTextTheme] that will be used for styling the grid header cells
///   that are not of type [AnsiText].
///
///   If [overrideTheme] is set to true and the cell content is of type [AnsiText] then this
///   text theme will be overridden by the cell's original theme.
///
///   If not set, the [cellTextStyle] will be used instead.
///
///   Defaults to *null*.
///
/// - [cellTextTheme]
///
///   The default [AnsiTextTheme] that will be used for styling all grid cells that are not of type [AnsiText].
///
/// - [footerTextTheme]
///
///   The default [AnsiTextTheme] that will be used for styling the grid footer cells
///   that are not of type [AnsiText].
///
///   If [overrideTheme] is set to true and the cell content is of type [AnsiText] then this
///   text theme will be overridden by the cell's original theme.
///
///   If not set, the [cellTextStyle] will be used instead.
///
///   Defaults to *null*.
///
///  - [fixedCellWidth]
///
///   If set will use this value as default width for all grid cells.
///
///   Defaults to *null*.
///
/// - [keepSameWidth]
///
///   If set to true will find the max cell width and use it for the whole [AnsiGrid].
///
///   Defaults to *false*.
///
/// - [orientation]
///
///   The [AnsiOrientation] that will be used to draw the [AnsiGrid].
///
///   Defaults to *false*.
///
/// - [transparent]
///
///   If set to true any external formatting will affect the [AnsiGrid].
///
///   Defaults to *false*.
///
/// - [overrideTheme]
///
///   Enabling this will prevent [AnsiGrid] from using the given [AnsiTextTheme] to the cells
///   with custom styles and colors and allow them to keep their original styling.
///
///   Defaults to *false*.
///
/// - [wrapText]
///
///   If set to true all values that exceed the [wrapLength] will be wrapped.
///
///   Defaults to *false*.
///
/// - [wrapOptions]
///
///   Defines how the text value of the tree node should be wrapped, if [wrapText] is enabled.
///
///   If [fixedWidth] is not null, will be used as the maximum length for each line.
@DataClass()
abstract class AnsiGridTheme {
  const AnsiGridTheme.ctor();

  /// Default constructor
  const factory AnsiGridTheme({
    AnsiBorder border,
    AnsiTextTheme? headerTextTheme,
    AnsiTextTheme cellTextTheme,
    AnsiTextTheme? footerTextTheme,
    int? fixedCellWidth,
    bool keepSameWidth,
    AnsiOrientation orientation,
    bool transparent,
    bool overrideTheme,
    bool wrapText,
    WrapOptions wrapOptions,
  }) = _$AnsiGridThemeImpl;

  /// The [AnsiBorder] that will be used to draw the [AnsiGrid] with.
  @DefaultValue(AnsiBorder.$default)
  AnsiBorder get border;

  /// The default [AnsiTextTheme] that will be used for styling the grid header cells
  /// that are not of type [AnsiText].
  ///
  /// If [overrideTheme] is set to true and the cell content is of type [AnsiText] then this
  /// text theme will be overridden by the cell's original theme.
  ///
  /// If not set, the [cellTextStyle] will be used instead.
  ///
  /// Defaults to *null*.
  AnsiTextTheme? get headerTextTheme;

  /// The default [AnsiTextTheme] that will be used for styling all grid cells
  /// that are not of type [AnsiText].
  @DefaultValue(AnsiTextTheme())
  AnsiTextTheme get cellTextTheme;

  /// The default [AnsiTextTheme] that will be used for styling the grid footer cells
  /// that are not of type [AnsiText].
  ///
  /// If [overrideTheme] is set to true and the cell content is of type [AnsiText] then this
  /// text theme will be overridden by the cell's original theme.
  ///
  /// If not set, the [cellTextStyle] will be used instead.
  ///
  /// Defaults to *null*.
  AnsiTextTheme? get footerTextTheme;

  /// If set will use this value as default width for all grid cells.
  ///
  /// Defaults to *null*.
  int? get fixedCellWidth;

  /// If set to true will find the max cell width and use it for the whole [AnsiGrid].
  ///
  /// Defaults to *true*.
  @DefaultValue(true)
  bool get keepSameWidth;

  /// The [AnsiOrientation] that will be used to draw the [AnsiGrid].
  ///
  /// Defaults to *vertical*.
  @DefaultValue(AnsiOrientation.vertical)
  AnsiOrientation get orientation;

  /// If set to true any external formatting will affect the [AnsiGrid].
  ///
  /// Defaults to *false*.
  @DefaultValue(false)
  bool get transparent;

  /// Enabling this will prevent [AnsiGrid] from using the given [AnsiTextTheme] to the cells
  /// with custom styles and colors and allow them to keep their original styling.
  ///
  /// Defaults to *false*.
  @DefaultValue(false)
  bool get overrideTheme;

  /// If set to true all values that exceed the [wrapLength] will be wrapped.
  ///
  /// Defaults to *false*.
  @DefaultValue(false)
  bool get wrapText;

  /// Defines how the text value of the tree node should be wrapped, if [wrapText] is enabled.
  /// If [fixedWidth] is not null, will be used as the maximum length for each line.
  @DefaultValue(WrapOptions())
  WrapOptions get wrapOptions;

  /// The default [AnsiGridTheme].
  static const AnsiGridTheme $default = AnsiGridTheme();
}
