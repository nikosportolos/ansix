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

const String foregroundColorStartCode = '$escape[38;5;';
const String backgroundColorStartCode = '$escape[48;5;';
const String foregroundRgbColorStartCode = '$escape[38;2;';
const String backgroundRgbColorStartCode = '$escape[48;2;';
const String colorEndCode = 'm';
