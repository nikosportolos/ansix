import 'package:ansix/ansix.dart';
import 'package:test/test.dart';

void main() {
  const String testMessage = 'This is a test message';
  final List<int?> widths = <int?>[
    null,
    5,
    testMessage.length,
    // 30,
  ];
  final List<AnsiPadding> paddings = <AnsiPadding>[
    AnsiPadding.none,
    AnsiPadding.horizontal(4),
    AnsiPadding.vertical(1),
    AnsiPadding.only(top: 1, bottom: 1, left: 2, right: 2),
  ];
  final List<AnsiColor> colors = <AnsiColor>[AnsiColor.none, AnsiColor.darkBlue];

  group('AnsiText', () {
    for (final AnsiStyle style in AnsiStyle.values) {
      group(style.name, () {
        for (final AnsiTextAlignment alignment in AnsiTextAlignment.values) {
          group(alignment.name, () {
            for (final AnsiPadding padding in paddings) {
              group(padding.toString(), () {
                for (final int? width in widths) {
                  group('width=$width', () {
                    for (final AnsiColor foregroundColor in colors) {
                      group('foreground=${foregroundColor.name}', () {
                        for (final AnsiColor backgroundColor in colors) {
                          group('background=${backgroundColor.name}', () {
                            test('test', () {
                              final AnsiText ansiText = AnsiText(
                                testMessage,
                                fixedWidth: width,
                                padding: padding,
                                textAlignment: alignment,
                                textStyle: AnsiTextStyle.fromStyle(style),
                                foregroundColor: foregroundColor,
                                backgroundColor: backgroundColor,
                              );

                              expect(ansiText.toString(), ansiText.formattedText);

                              // Validate width
                              expect(
                                ansiText.width,
                                (width ?? 0) <= testMessage.length
                                    ? testMessage.length + padding.left + padding.right
                                    : width,
                              );

                              final StringBuffer buffer = StringBuffer()
                                ..write(AnsiEscapeCodes.newLine * padding.top)
                                ..write(backgroundColor.background)
                                ..write(' ' * padding.left)
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.right
                                          ? (width ?? 0) - testMessage.length - padding.left - padding.right
                                          : 0),
                                )
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.center
                                          ? (width ?? 0) ~/ 2 - testMessage.length ~/ 2 - padding.left - padding.right
                                          : 0),
                                )
                                ..write(backgroundColor == AnsiColor.none ? '' : AnsiEscapeCodes.reset)
                                ..write(foregroundColor.foreground)
                                ..write(backgroundColor.background)
                                ..write(style.startEscapeCode)
                                ..write(testMessage)
                                ..write(style.endEscapeCode)
                                ..write(
                                  foregroundColor == AnsiColor.none && backgroundColor == AnsiColor.none //
                                      ? ''
                                      : AnsiEscapeCodes.reset,
                                )
                                ..write(backgroundColor.background)
                                ..write(' ' * padding.right)
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.left
                                          ? (width ?? 0) - testMessage.length - padding.right - padding.left
                                          : 0),
                                )
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.center
                                          ? (width ?? 0) ~/ 2 - testMessage.length ~/ 2 - padding.left - padding.right
                                          : 0),
                                )
                                ..write(backgroundColor == AnsiColor.none ? '' : AnsiEscapeCodes.reset)
                                ..write(AnsiEscapeCodes.newLine * padding.bottom);

                              // print('actual   : ${ansiText.toString()}');
                              // print('expected : ${buffer.toString()}');

                              expect(ansiText.toString(), buffer.toString());

                              // Validate AnsiText.withTheme
                              expect(
                                buffer.toString(),
                                AnsiText.withTheme(
                                  testMessage,
                                  AnsiTextTheme(
                                    backgroundColor: backgroundColor,
                                    foregroundColor: foregroundColor,
                                    textStyle: AnsiTextStyle.fromStyle(style),
                                    textAlignment: alignment,
                                    padding: padding,
                                    fixedWidth: width,
                                  ),
                                ).toString(),
                              );
                            });
                          });
                        }
                      });
                    }
                  });
                }
              });
            }
          });
        }
      });
    }
  });
}
