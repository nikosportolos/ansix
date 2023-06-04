import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiOutlinedText', () {
    test('text with rounded borders and horizontal padding', () {
      final AnsiOutlinedText text = AnsiOutlinedText(
        'This is a text with rounded borders and horizontal padding',
        border: const AnsiBorder(
          color: AnsiColor.deepSkyBlue4,
          type: AnsiBorderType.header,
          style: AnsiBorderStyle.rounded,
        ),
        foregroundColor: AnsiColor.salmon1,
        padding: AnsiPadding.horizontal(2),
      );
      expect(text.formattedText, _mock1);
    });

    test('text with vertical padding and yellow square borders', () {
      final AnsiOutlinedText text = AnsiOutlinedText(
        'This is a text with vertical padding\nand yellow square borders',
        border: const AnsiBorder(
          color: AnsiColor.yellow5,
          type: AnsiBorderType.outside,
          style: AnsiBorderStyle.square,
        ),
        foregroundColor: AnsiColor.darkSeaGreen7,
        padding: AnsiPadding.vertical(2),
      );
      expect(text.formattedText, _mock2);
    });

    test('text with multiple lines, double border and padding', () {
      final AnsiOutlinedText text = AnsiOutlinedText(
        'This is a text \nwith multiple\n\nlines',
        padding: AnsiPadding.symmetric(
          vertical: 1,
          horizontal: 5,
        ),
        foregroundColor: AnsiColor.darkKhaki,
        border: const AnsiBorder(
          color: AnsiColor.green4,
          type: AnsiBorderType.outside,
          style: AnsiBorderStyle.double,
        ),
      );
      expect(text.formattedText, _mock3);
    });

    test('text with no border', () {
      final AnsiOutlinedText text = AnsiOutlinedText(
        'This is a text no border',
        padding: AnsiPadding.symmetric(
          vertical: 1,
          horizontal: 5,
        ),
        foregroundColor: AnsiColor.darkKhaki,
        border: AnsiBorder.empty,
      );
      expect(text.formattedText, _mock4);
    });
  });
}

const String _mock1 = '''
[38;5;25m╭──────────────────────────────────────────────────────────────╮[0m
[38;5;25m│[0m  [38;5;209m[38;5;209mThis is a text with rounded borders and horizontal padding[0m[0m  [38;5;25m│[0m
[38;5;25m╰──────────────────────────────────────────────────────────────╯[0m''';

const String _mock2 = '''
[38;5;148m┌────────────────────────────────────┐[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m[38;5;150m[38;5;150mThis is a text with vertical padding[0m[38;5;148m│[0m
[38;5;148m│[0m[38;5;150mand yellow square borders[0m[0m           [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m└────────────────────────────────────┘[0m''';

const String _mock3 = '''
[38;5;28m╔═════════════════════════╗[0m
[38;5;28m║[0m                         [38;5;28m║[0m
[38;5;28m║[0m     [38;5;143m[38;5;143mThis is a text [0m     [38;5;28m║[0m
[38;5;28m║[0m     [38;5;143mwith multiple[0m       [38;5;28m║[0m
[38;5;28m║[0m     [38;5;143mlines[0m[0m               [38;5;28m║[0m
[38;5;28m║[0m                         [38;5;28m║[0m
[38;5;28m╚═════════════════════════╝[0m''';

const String _mock4 = '''
                                  
     [38;5;143m[38;5;143mThis is a text no border[0m[0m     
                                  ''';
