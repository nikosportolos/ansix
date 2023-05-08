const String escape = '\x1B';
const String reset = '$escape[0m';
const String newLine = '\n';

const String boldStartCode = '$escape[1m';
const String boldEndCode = '$escape[22m';

const String dimStartCode = '$escape[2m';
const String dimEndCode = '$escape[22m';

const String italicStartCode = '$escape[3m';
const String italicEndCode = '$escape[23m';

const String underlineStartCode = '$escape[4m';
const String underlineEndCode = '$escape[24m';

const String boldUnderlineStartCode = '$escape[21m';
const String boldUnderlineEndCode = '$escape[24m';

const String inverseStartCode = '$escape[7m';
const String inverseEndCode = '$escape[27m';

const String strikethroughStartCode = '$escape[9m';
const String strikethroughEndCode = '$escape[29m';

/// ANSI escape sequence used to apply 8-bit (256-color) ANSI foreground colors in a terminal.
/// The "38" part of the sequence refers to the foreground color, and the "5" indicates that we're using 8-bit colors.
const String foregroundColorStartCode = '$escape[38;5;';

/// ANSI escape sequence used to apply 8-bit (256-color) ANSI foreground colors in a terminal.
/// The "48" part of the sequence refers to the background color, and the "5" indicates that we're using 8-bit colors.
const String backgroundColorStartCode = '$escape[48;5;';

/// ANSI escape sequence used to specify a 24-bit RGB color value in decimal notation.
/// The first number after the escape sequence represents the red value, the second number represents the green value,
/// and the third number represents the blue value, all in the range of 0 to 255.
/// The "38" part of the sequence refers to the foreground color, and the "2" indicates that we're using 24-bit colors.
const String foregroundRgbColorStartCode = '$escape[38;2;';

/// ANSI escape sequence used to specify a 24-bit RGB color value in decimal notation.
/// The first number after the escape sequence represents the red value, the second number represents the green value,
/// and the third number represents the blue value, all in the range of 0 to 255.
/// The "48" part of the sequence refers to the background color, and the "2" indicates that we're using 24-bit colors.
const String backgroundRgbColorStartCode = '$escape[48;2;';
const String colorEndCode = 'm';
