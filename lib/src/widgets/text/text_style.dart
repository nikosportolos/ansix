import 'package:ansix/src/theme/style.dart';

class AnsiTextStyle {
  const AnsiTextStyle({
    this.bold = false,
    this.boldUnderline = false,
    this.dim = false,
    this.inverse = false,
    this.italic = false,
    this.strikethrough = false,
    this.underline = false,
  });

  /// If set to true will add a bold ANSI style.
  final bool bold;

  /// If set to true will add a bold underline ANSI style.
  final bool boldUnderline;

  /// If set to true will add a dim ANSI style.
  final bool dim;

  /// If set to true will add a inverse ANSI style.
  final bool inverse;

  /// If set to true will add a italic ANSI style.
  final bool italic;

  /// If set to true will add a strikethrough ANSI style.
  final bool strikethrough;

  /// If set to true will add a underline style.
  final bool underline;

  factory AnsiTextStyle.fromStyle(final AnsiStyle style) {
    switch (style) {
      case AnsiStyle.bold:
        return const AnsiTextStyle(bold: true);
      case AnsiStyle.boldUnderline:
        return const AnsiTextStyle(boldUnderline: true);
      case AnsiStyle.dim:
        return const AnsiTextStyle(dim: true);
      case AnsiStyle.inverse:
        return const AnsiTextStyle(inverse: true);
      case AnsiStyle.italic:
        return const AnsiTextStyle(italic: true);
      case AnsiStyle.normal:
        return const AnsiTextStyle();
      case AnsiStyle.strikethrough:
        return const AnsiTextStyle(strikethrough: true);
      case AnsiStyle.underline:
        return const AnsiTextStyle(underline: true);
    }
  }

  List<AnsiStyle> get styles {
    return <AnsiStyle>[
      if (bold) AnsiStyle.bold,
      if (boldUnderline) AnsiStyle.boldUnderline,
      if (dim) AnsiStyle.dim,
      if (inverse) AnsiStyle.inverse,
      if (italic) AnsiStyle.italic,
      if (strikethrough) AnsiStyle.strikethrough,
      if (underline) AnsiStyle.underline,
    ];
  }
}
