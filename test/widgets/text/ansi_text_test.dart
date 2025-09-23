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
  final List<AnsiColor> colors = <AnsiColor>[
    AnsiColor.none,
    AnsiColor.darkBlue,
  ];

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
                                alignment: alignment,
                                style: AnsiTextStyle.fromStyle(style),
                                foregroundColor: foregroundColor,
                                backgroundColor: backgroundColor,
                              );

                              expect(
                                ansiText.toString(),
                                ansiText.formattedText,
                              );

                              // Validate width
                              expect(
                                ansiText.width,
                                (width ?? 0) <= testMessage.length
                                    ? testMessage.length +
                                          padding.left +
                                          padding.right
                                    : width,
                              );

                              final StringBuffer buffer = StringBuffer()
                                ..writeLines(padding.top)
                                ..write(
                                  backgroundColor != AnsiColor.none
                                      ? backgroundColor.background
                                      : '',
                                )
                                ..writeSpaces(padding.left)
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.right
                                          ? (width ?? 0) -
                                                testMessage.length -
                                                padding.left -
                                                padding.right
                                          : 0),
                                )
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.center
                                          ? (width ?? 0) ~/ 2 -
                                                testMessage.length ~/ 2 -
                                                padding.left -
                                                padding.right
                                          : 0),
                                )
                                ..write(style.startEscapeCode)
                                ..write(
                                  foregroundColor == AnsiColor.none
                                      ? ''
                                      : foregroundColor.foreground,
                                )
                                ..write(testMessage)
                                ..write(style.endEscapeCode)
                                ..writeSpaces(padding.right)
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.left
                                          ? (width ?? 0) -
                                                testMessage.length -
                                                padding.right -
                                                padding.left
                                          : 0),
                                )
                                ..write(
                                  ' ' *
                                      (alignment == AnsiTextAlignment.center
                                          ? (width ?? 0) ~/ 2 -
                                                testMessage.length ~/ 2 -
                                                padding.left -
                                                padding.right
                                          : 0),
                                )
                                ..write(
                                  foregroundColor == AnsiColor.none &&
                                          backgroundColor == AnsiColor.none
                                      ? ''
                                      : AnsiEscapeCodes.reset,
                                )
                                ..writeLines(padding.bottom);

                              expect(ansiText.toString(), buffer.toString());

                              // Validate AnsiText.withTheme
                              expect(
                                buffer.toString(),
                                AnsiText.withTheme(
                                  testMessage,
                                  AnsiTextTheme(
                                    backgroundColor: backgroundColor,
                                    foregroundColor: foregroundColor,
                                    style: AnsiTextStyle.fromStyle(style),
                                    alignment: alignment,
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
