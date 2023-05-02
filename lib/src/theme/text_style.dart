import 'package:ansix/src/theme/style.dart';

class AnsiTextStyle {
  const AnsiTextStyle({
    this.bold = false,
    this.italic = false,
    this.underline = false,
    this.strikethrough = false,
  });

  final bool bold;
  final bool italic;
  final bool underline;
  final bool strikethrough;

  List<AnsiStyle> get styles {
    return <AnsiStyle>[
      if (bold) AnsiStyle.bold,
      if (italic) AnsiStyle.italic,
      if (underline) AnsiStyle.underline,
      if (strikethrough) AnsiStyle.strikethrough,
    ];
  }
}
