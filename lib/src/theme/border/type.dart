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

  bool get hasHeader => this == AnsiBorderType.header || this == AnsiBorderType.headerFooter;
  bool get hasFooter => this == AnsiBorderType.headerFooter || this == AnsiBorderType.footer;
}
