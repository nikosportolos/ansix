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

  final bool bold;
  final bool boldUnderline;
  final bool dim;
  final bool inverse;
  final bool italic;
  final bool strikethrough;
  final bool underline;

  List<AnsiStyle> get styles {
    return <AnsiStyle>[
      if (bold) AnsiStyle.bold,
      if (boldUnderline) AnsiStyle.boldUnderline,
      if (dim) AnsiStyle.dim,
      if (inverse) AnsiStyle.dim,
      if (italic) AnsiStyle.italic,
      if (strikethrough) AnsiStyle.strikethrough,
      if (underline) AnsiStyle.underline,
    ];
  }
}
