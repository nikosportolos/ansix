import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  group('AnsiOutlinedText', () {
    test('text with rounded borders and horizontal padding', () {
      expect(
        AnsiOutlinedText(
          'This is a text with rounded borders and horizontal padding',
          border: const AnsiBorder(
            color: AnsiColor.deepSkyBlue4,
            type: AnsiBorderType.all,
            style: AnsiBorderStyle.rounded,
          ),
          foregroundColor: AnsiColor.salmon1,
          padding: AnsiPadding.horizontal(2),
        ).formattedText,
        '''
[38;5;25m╭──────────────────────────────────────────────────────────────╮[0m
[38;5;25m│[0m  [38;5;209mThis is a text with rounded borders and horizontal padding  [0m[38;5;25m│[0m
[38;5;25m╰──────────────────────────────────────────────────────────────╯[0m''',
      );
    });

    test('text with vertical padding and yellow square borders', () {
      expect(
        AnsiOutlinedText(
          'This is a text with vertical padding\nand yellow square borders',
          border: const AnsiBorder(
            color: AnsiColor.yellow5,
            type: AnsiBorderType.outside,
            style: AnsiBorderStyle.square,
          ),
          foregroundColor: AnsiColor.darkSeaGreen7,
          padding: AnsiPadding.vertical(2),
        ).formattedText,
        '''
[38;5;148m┌────────────────────────────────────┐[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m[38;5;150mThis is a text with vertical padding[0m[38;5;148m│[0m
[38;5;148m│[0m[38;5;150mand yellow square borders[0m           [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m│[0m                                    [38;5;148m│[0m
[38;5;148m└────────────────────────────────────┘[0m''',
      );
    });

    test('text with multiple lines, double border and padding', () {
      expect(
        AnsiOutlinedText(
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
        ).formattedText,
        '''
[38;5;28m╔═════════════════════════╗[0m
[38;5;28m║[0m                         [38;5;28m║[0m
[38;5;28m║[0m     [38;5;143mThis is a text      [0m[38;5;28m║[0m
[38;5;28m║[0m     [38;5;143mwith multiple     [0m  [38;5;28m║[0m
[38;5;28m║[0m                         [38;5;28m║[0m
[38;5;28m║[0m     [38;5;143mlines     [0m          [38;5;28m║[0m
[38;5;28m║[0m                         [38;5;28m║[0m
[38;5;28m╚═════════════════════════╝[0m''',
      );
    });

    test('text with no border', () {
      expect(
        AnsiOutlinedText(
          'This is a text no border',
          padding: AnsiPadding.symmetric(
            vertical: 1,
            horizontal: 5,
          ),
          foregroundColor: AnsiColor.darkKhaki,
          border: AnsiBorder.none,
        ).formattedText,
        '''
                                  
     [38;5;143mThis is a text no border     [0m
                                  ''',
      );
    });

    group('wrap lines', () {
      test('40', () {
        expect(
            AnsiOutlinedText(
              'This is a demo text with rounded borders',
              border: const AnsiBorder(
                color: AnsiColor.deepSkyBlue4,
                type: AnsiBorderType.outside,
                style: AnsiBorderStyle.rounded,
              ),
              foregroundColor: AnsiColor.darkKhaki,
              wrapText: true,
              fixedWidth: 40,
            ).formattedText,
            '''
[38;5;25m╭────────────────────────────────────────╮[0m
[38;5;25m│[0m[38;5;143mThis is a demo text with rounded borders[0m[38;5;25m│[0m
[38;5;25m╰────────────────────────────────────────╯[0m''');
      });

      test('20', () {
        expect(
          AnsiOutlinedText(
            'This is a demo text with rounded borders',
            border: const AnsiBorder(
              color: AnsiColor.deepSkyBlue4,
              type: AnsiBorderType.outside,
              style: AnsiBorderStyle.rounded,
            ),
            foregroundColor: AnsiColor.darkKhaki,
            wrapText: true,
            fixedWidth: 20,
          ).formattedText,
          '''
[38;5;25m╭────────────────────╮[0m
[38;5;25m│[0m[38;5;143mThis is a demo text [0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mwith rounded borders[0m[38;5;25m│[0m
[38;5;25m╰────────────────────╯[0m''',
        );
      });

      test('10 - split words', () {
        expect(
          AnsiOutlinedText(
            'This is a demo text with rounded borders',
            border: const AnsiBorder(
              color: AnsiColor.deepSkyBlue4,
              type: AnsiBorderType.outside,
              style: AnsiBorderStyle.rounded,
            ),
            foregroundColor: AnsiColor.darkKhaki,
            wrapText: true,
            fixedWidth: 10,
            wrapOptions: const WrapOptions(splitWords: true),
          ).formattedText,
          '''
[38;5;25m╭──────────╮[0m
[38;5;25m│[0m[38;5;143mThis is a [0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mdemo text [0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mwith round[0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143med borders[0m[38;5;25m│[0m
[38;5;25m╰──────────╯[0m''',
        );
      });

      test('10 - split words with line break', () {
        expect(
          AnsiOutlinedText(
            'This is a demo text with rounded borders',
            border: const AnsiBorder(
              color: AnsiColor.deepSkyBlue4,
              type: AnsiBorderType.outside,
              style: AnsiBorderStyle.rounded,
            ),
            foregroundColor: AnsiColor.darkKhaki,
            wrapText: true,
            fixedWidth: 10,
            wrapOptions: const WrapOptions(
              splitWords: true,
              lineBreak: true,
            ),
          ).formattedText,
          '''
[38;5;25m╭──────────╮[0m
[38;5;25m│[0m[38;5;143mThis is a [0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mdemo text [0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mwith roun-[0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mded borde-[0m[38;5;25m│[0m
[38;5;25m│[0m[38;5;143mr         [0m[38;5;25m│[0m
[38;5;25m╰──────────╯[0m''',
        );
      });
    });
  });
}
