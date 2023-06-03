part of 'border.dart';

/// **AnsiBorderType**
enum AnsiBorderType {
  all,
  header,
  headerFooter,
  inside,
  insideHorizontal,
  insideVertical,
  footer,
  none,
  outside,
  outsideHorizontal,
  outsideVertical;

  /// Returns true if the [AnsiBorderType] contains header border.
  bool get hasHeader => this == AnsiBorderType.header || this == AnsiBorderType.headerFooter;

  /// Returns true if the [AnsiBorderType] contains footer border.
  bool get hasFooter => this == AnsiBorderType.headerFooter || this == AnsiBorderType.footer;
}
