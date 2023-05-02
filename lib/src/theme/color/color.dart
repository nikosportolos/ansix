import 'package:ansix/src/core/constants.dart';
import 'package:ansix/src/theme/color/hsl.dart';
import 'package:ansix/src/theme/color/rgb.dart';

/// Extended Ansi colors
///
/// https://en.wikipedia.org/wiki/X11_color_names
/// https://tintin.mudhalla.net/info/256color/
class AnsiColor {
  static const AnsiColor none = AnsiColor._(
    value: -1,
    name: 'none',
    hex: '',
    rgb: null,
    hsl: null,
  );
  static const AnsiColor black = AnsiColor._(
    value: 0,
    name: 'Black',
    hex: '#000000',
    rgb: Rgb(0, 0, 0),
  );
  static const AnsiColor maroon = AnsiColor._(
    value: 1,
    name: 'Maroon',
    hex: '#800000',
    rgb: Rgb(128, 0, 0),
  );
  static const AnsiColor green = AnsiColor._(
    value: 2,
    name: 'Green',
    hex: '#008000',
    rgb: Rgb(0, 128, 0),
  );
  static const AnsiColor olive = AnsiColor._(
    value: 3,
    name: 'Olive',
    hex: '#808000',
    rgb: Rgb(128, 128, 0),
  );
  static const AnsiColor navy = AnsiColor._(
    value: 4,
    name: 'Navy',
    hex: '#000080',
    rgb: Rgb(0, 0, 128),
  );
  static const AnsiColor magenta = AnsiColor._(
    value: 5,
    name: 'Magenta',
    hex: '#800080',
    rgb: Rgb(128, 0, 128),
  );
  static const AnsiColor teal = AnsiColor._(
    value: 6,
    name: 'Teal',
    hex: '#008080',
    rgb: Rgb(0, 128, 128),
  );
  static const AnsiColor silver = AnsiColor._(
    value: 7,
    name: 'Silver',
    hex: '#c0c0c0',
    rgb: Rgb(192, 192, 192),
  );
  static const AnsiColor grey = AnsiColor._(
    value: 8,
    name: 'Grey',
    hex: '#808080',
    rgb: Rgb(128, 128, 128),
  );
  static const AnsiColor red = AnsiColor._(
    value: 9,
    name: 'Red',
    hex: '#ff0000',
    rgb: Rgb(255, 0, 0),
  );
  static const AnsiColor lime = AnsiColor._(
    value: 10,
    name: 'Lime',
    hex: '#00ff00',
    rgb: Rgb(0, 255, 0),
  );
  static const AnsiColor yellow = AnsiColor._(
    value: 11,
    name: 'Yellow',
    hex: '#ffff00',
    rgb: Rgb(255, 255, 0),
  );
  static const AnsiColor blue = AnsiColor._(
    value: 12,
    name: 'Blue',
    hex: '#0000ff',
    rgb: Rgb(0, 0, 255),
  );
  static const AnsiColor fuchsia = AnsiColor._(
    value: 13,
    name: 'Fuchsia',
    hex: '#ff00ff',
    rgb: Rgb(255, 0, 255),
  );
  static const AnsiColor aqua = AnsiColor._(
    value: 14,
    name: 'Aqua',
    hex: '#00ffff',
    rgb: Rgb(0, 255, 255),
  );
  static const AnsiColor white = AnsiColor._(
    value: 15,
    name: 'White',
    hex: '#ffffff',
    rgb: Rgb(255, 255, 255),
  );
  static const AnsiColor grey0 = AnsiColor._(
    value: 16,
    name: 'Grey 0',
    hex: '#000000',
    rgb: Rgb(0, 0, 0),
  );
  static const AnsiColor navyBlue = AnsiColor._(
    value: 17,
    name: 'Navy Blue',
    hex: '#00005f',
    rgb: Rgb(0, 0, 95),
  );
  static const AnsiColor darkBlue = AnsiColor._(
    value: 18,
    name: 'Dark Blue',
    hex: '#000087',
    rgb: Rgb(0, 0, 135),
  );
  static const AnsiColor blue3 = AnsiColor._(
    value: 19,
    name: 'Blue 3',
    hex: '#0000af',
    rgb: Rgb(0, 0, 175),
  );
  static const AnsiColor blue2 = AnsiColor._(
    value: 20,
    name: 'Blue 2',
    hex: '#0000d7',
    rgb: Rgb(0, 0, 215),
  );
  static const AnsiColor blue1 = AnsiColor._(
    value: 21,
    name: 'Blue 1',
    hex: '#0000ff',
    rgb: Rgb(0, 0, 255),
  );
  static const AnsiColor darkGreen = AnsiColor._(
    value: 22,
    name: 'Dark Green',
    hex: '#005f00',
    rgb: Rgb(0, 95, 0),
  );
  static const AnsiColor deepSkyBlue6 = AnsiColor._(
    value: 23,
    name: 'Deep Sky Blue 6',
    hex: '#005f5f',
    rgb: Rgb(0, 95, 95),
  );
  static const AnsiColor deepSkyBlue7 = AnsiColor._(
    value: 24,
    name: 'Deep Sky Blue 7',
    hex: '#005f87',
    rgb: Rgb(0, 95, 135),
  );
  static const AnsiColor deepSkyBlue4 = AnsiColor._(
    value: 25,
    name: 'Deep Sky Blue 4',
    hex: '#005faf',
    rgb: Rgb(0, 95, 175),
  );
  static const AnsiColor dodgerBlue3 = AnsiColor._(
    value: 26,
    name: 'Dodger Blue 3',
    hex: '#005fd7',
    rgb: Rgb(0, 95, 215),
  );
  static const AnsiColor dodgerBlue2 = AnsiColor._(
    value: 27,
    name: 'Dodger Blue 2',
    hex: '#005fff',
    rgb: Rgb(0, 95, 255),
  );
  static const AnsiColor green4 = AnsiColor._(
    value: 28,
    name: 'Green 4',
    hex: '#008700',
    rgb: Rgb(0, 135, 0),
  );
  static const AnsiColor springGreen4 = AnsiColor._(
    value: 29,
    name: 'Spring Green 4',
    hex: '#00875f',
    rgb: Rgb(0, 135, 95),
  );
  static const AnsiColor turquoise4 = AnsiColor._(
    value: 30,
    name: 'Turquoise 4',
    hex: '#008787',
    rgb: Rgb(0, 135, 135),
  );
  static const AnsiColor deepSkyBlue5 = AnsiColor._(
    value: 31,
    name: 'Deep Sky Blue 5',
    hex: '#0087af',
    rgb: Rgb(0, 135, 175),
  );
  static const AnsiColor deepSkyBlue3 = AnsiColor._(
    value: 32,
    name: 'Deep Sky Blue 3',
    hex: '#0087d7',
    rgb: Rgb(0, 135, 215),
  );
  static const AnsiColor dodgerBlue1 = AnsiColor._(
    value: 33,
    name: 'Dodger Blue 1',
    hex: '#0087ff',
    rgb: Rgb(0, 135, 255),
  );
  static const AnsiColor green2 = AnsiColor._(
    value: 34,
    name: 'Green 2',
    hex: '#00af00',
    rgb: Rgb(0, 175, 0),
  );
  static const AnsiColor springGreen6 = AnsiColor._(
    value: 35,
    name: 'Spring Green 6',
    hex: '#00af5f',
    rgb: Rgb(0, 175, 95),
  );
  static const AnsiColor darkCyan = AnsiColor._(
    value: 36,
    name: 'Dark Cyan',
    hex: '#00af87',
    rgb: Rgb(0, 175, 135),
  );
  static const AnsiColor lightSeaGreen = AnsiColor._(
    value: 37,
    name: 'Light Sea Green',
    hex: '#00afaf',
    rgb: Rgb(0, 175, 175),
  );
  static const AnsiColor deepSkyBlue2 = AnsiColor._(
    value: 38,
    name: 'Deep Sky Blue 2',
    hex: '#00afd7',
    rgb: Rgb(0, 175, 215),
  );
  static const AnsiColor deepSkyBlue1 = AnsiColor._(
    value: 39,
    name: 'Deep Sky Blue 1',
    hex: '#00afff',
    rgb: Rgb(0, 175, 255),
  );
  static const AnsiColor green3 = AnsiColor._(
    value: 40,
    name: 'Green 3',
    hex: '#00d700',
    rgb: Rgb(0, 215, 0),
  );
  static const AnsiColor springGreen3 = AnsiColor._(
    value: 41,
    name: 'Spring Green 3',
    hex: '#00d75f',
    rgb: Rgb(0, 215, 95),
  );
  static const AnsiColor springGreen5 = AnsiColor._(
    value: 42,
    name: 'Spring Green 5',
    hex: '#00d787',
    rgb: Rgb(0, 215, 135),
  );
  static const AnsiColor cyan3 = AnsiColor._(
    value: 43,
    name: 'Cyan 3',
    hex: '#00d7af',
    rgb: Rgb(0, 215, 175),
  );
  static const AnsiColor darkTurquoise = AnsiColor._(
    value: 44,
    name: 'Dark Turquoise',
    hex: '#00d7d7',
    rgb: Rgb(0, 215, 215),
  );
  static const AnsiColor turquoise2 = AnsiColor._(
    value: 45,
    name: 'Turquoise 2',
    hex: '#00d7ff',
    rgb: Rgb(0, 215, 255),
  );
  static const AnsiColor green1 = AnsiColor._(
    value: 46,
    name: 'Green 1',
    hex: '#00ff00',
    rgb: Rgb(0, 255, 0),
  );
  static const AnsiColor springGreen2 = AnsiColor._(
    value: 47,
    name: 'Spring Green 2',
    hex: '#00ff5f',
    rgb: Rgb(0, 255, 95),
  );
  static const AnsiColor springGreen1 = AnsiColor._(
    value: 48,
    name: 'Spring Green 1',
    hex: '#00ff87',
    rgb: Rgb(0, 255, 135),
  );
  static const AnsiColor mediumSpringGreen = AnsiColor._(
    value: 49,
    name: 'Medium Spring Green',
    hex: '#00ffaf',
    rgb: Rgb(0, 255, 175),
  );
  static const AnsiColor cyan2 = AnsiColor._(
    value: 50,
    name: 'Cyan 2',
    hex: '#00ffd7',
    rgb: Rgb(0, 255, 215),
  );
  static const AnsiColor cyan1 = AnsiColor._(
    value: 51,
    name: 'Cyan 1',
    hex: '#00ffff',
    rgb: Rgb(0, 255, 255),
  );
  static const AnsiColor darkRed = AnsiColor._(
    value: 52,
    name: 'Dark Red',
    hex: '#5f0000',
    rgb: Rgb(95, 0, 0),
  );
  static const AnsiColor deepPink7 = AnsiColor._(
    value: 53,
    name: 'Deep Pink 7',
    hex: '#5f005f',
    rgb: Rgb(95, 0, 95),
  );
  static const AnsiColor purple5 = AnsiColor._(
    value: 54,
    name: 'Purple 5',
    hex: '#5f0087',
    rgb: Rgb(95, 0, 135),
  );
  static const AnsiColor purple4 = AnsiColor._(
    value: 55,
    name: 'Purple 4',
    hex: '#5f00af',
    rgb: Rgb(95, 0, 175),
  );
  static const AnsiColor purple3 = AnsiColor._(
    value: 56,
    name: 'Purple 3',
    hex: '#5f00d7',
    rgb: Rgb(95, 0, 215),
  );
  static const AnsiColor blueViolet = AnsiColor._(
    value: 57,
    name: 'Blue Violet',
    hex: '#5f00ff',
    rgb: Rgb(95, 0, 255),
  );
  static const AnsiColor orange2 = AnsiColor._(
    value: 58,
    name: 'Orange 2',
    hex: '#5f5f00',
    rgb: Rgb(95, 95, 0),
  );
  static const AnsiColor grey37 = AnsiColor._(
    value: 59,
    name: 'Grey 37',
    hex: '#5f5f5f',
    rgb: Rgb(95, 95, 95),
  );
  static const AnsiColor mediumPurple4 = AnsiColor._(
    value: 60,
    name: 'Medium Purple 4',
    hex: '#5f5f87',
    rgb: Rgb(95, 95, 135),
  );
  static const AnsiColor slateBlue2 = AnsiColor._(
    value: 61,
    name: 'Slate Blue 2',
    hex: '#5f5faf',
    rgb: Rgb(95, 95, 175),
  );
  static const AnsiColor slateBlue3 = AnsiColor._(
    value: 62,
    name: 'Slate Blue 3',
    hex: '#5f5fd7',
    rgb: Rgb(95, 95, 215),
  );
  static const AnsiColor royalBlue1 = AnsiColor._(
    value: 63,
    name: 'Royal Blue 1',
    hex: '#5f5fff',
    rgb: Rgb(95, 95, 255),
  );
  static const AnsiColor chartreuse4 = AnsiColor._(
    value: 64,
    name: 'Chartreuse 4',
    hex: '#5f8700',
    rgb: Rgb(95, 135, 0),
  );
  static const AnsiColor darkSeaGreen4 = AnsiColor._(
    value: 65,
    name: 'Dark Sea Green 4',
    hex: '#5f875f',
    rgb: Rgb(95, 135, 95),
  );
  static const AnsiColor paleTurquoise4 = AnsiColor._(
    value: 66,
    name: 'Pale Turquoise 4',
    hex: '#5f8787',
    rgb: Rgb(95, 135, 135),
  );
  static const AnsiColor steelBlue = AnsiColor._(
    value: 67,
    name: 'Steel Blue',
    hex: '#5f87af',
    rgb: Rgb(95, 135, 175),
  );
  static const AnsiColor steelBlue3 = AnsiColor._(
    value: 68,
    name: 'Steel Blue 3',
    hex: '#5f87d7',
    rgb: Rgb(95, 135, 215),
  );
  static const AnsiColor cornflowerBlue = AnsiColor._(
    value: 69,
    name: 'Cornflower Blue',
    hex: '#5f87ff',
    rgb: Rgb(95, 135, 255),
  );
  static const AnsiColor chartreuse6 = AnsiColor._(
    value: 70,
    name: 'Chartreuse 6',
    hex: '#5faf00',
    rgb: Rgb(95, 175, 0),
  );
  static const AnsiColor darkSeaGreen8 = AnsiColor._(
    value: 71,
    name: 'Dark Sea Green 8',
    hex: '#5faf5f',
    rgb: Rgb(95, 175, 95),
  );
  static const AnsiColor cadetBlue = AnsiColor._(
    value: 72,
    name: 'Cadet Blue',
    hex: '#5faf87',
    rgb: Rgb(95, 175, 135),
  );
  static const AnsiColor cadetBlue2 = AnsiColor._(
    value: 73,
    name: 'Cadet Blue 2',
    hex: '#5fafaf',
    rgb: Rgb(95, 175, 175),
  );
  static const AnsiColor skyBlue3 = AnsiColor._(
    value: 74,
    name: 'Sky Blue 3',
    hex: '#5fafd7',
    rgb: Rgb(95, 175, 215),
  );
  static const AnsiColor steelBlue4 = AnsiColor._(
    value: 75,
    name: 'Steel Blue 4',
    hex: '#5fafff',
    rgb: Rgb(95, 175, 255),
  );
  static const AnsiColor chartreuse3 = AnsiColor._(
    value: 76,
    name: 'Chartreuse 3',
    hex: '#5fd700',
    rgb: Rgb(95, 215, 0),
  );
  static const AnsiColor paleGreen4 = AnsiColor._(
    value: 77,
    name: 'Pale Green 4',
    hex: '#5fd75f',
    rgb: Rgb(95, 215, 95),
  );
  static const AnsiColor seaGreen3 = AnsiColor._(
    value: 78,
    name: 'Sea Green 3',
    hex: '#5fd787',
    rgb: Rgb(95, 215, 135),
  );
  static const AnsiColor aquamarine3 = AnsiColor._(
    value: 79,
    name: 'Aquamarine 3',
    hex: '#5fd7af',
    rgb: Rgb(95, 215, 175),
  );
  static const AnsiColor mediumTurquoise = AnsiColor._(
    value: 80,
    name: 'Medium Turquoise',
    hex: '#5fd7d7',
    rgb: Rgb(95, 215, 215),
  );
  static const AnsiColor steelBlue1 = AnsiColor._(
    value: 81,
    name: 'Steel Blue 1',
    hex: '#5fd7ff',
    rgb: Rgb(95, 215, 255),
  );
  static const AnsiColor chartreuse2 = AnsiColor._(
    value: 82,
    name: 'Chartreuse 2',
    hex: '#5fff00',
    rgb: Rgb(95, 255, 0),
  );
  static const AnsiColor seaGreen2 = AnsiColor._(
    value: 83,
    name: 'Sea Green 2',
    hex: '#5fff5f',
    rgb: Rgb(95, 255, 95),
  );
  static const AnsiColor seaGreen4 = AnsiColor._(
    value: 84,
    name: 'Sea Green 4',
    hex: '#5fff87',
    rgb: Rgb(95, 255, 135),
  );
  static const AnsiColor seaGreen1 = AnsiColor._(
    value: 85,
    name: 'Sea Green 1',
    hex: '#5fffaf',
    rgb: Rgb(95, 255, 175),
  );
  static const AnsiColor aquamarine2 = AnsiColor._(
    value: 86,
    name: 'Aquamarine 2',
    hex: '#5fffd7',
    rgb: Rgb(95, 255, 215),
  );
  static const AnsiColor darkSlateGray2 = AnsiColor._(
    value: 87,
    name: 'Dark Slate Gray 2',
    hex: '#5fffff',
    rgb: Rgb(95, 255, 255),
  );
  static const AnsiColor darkRed2 = AnsiColor._(
    value: 88,
    name: 'Dark Red 2',
    hex: '#870000',
    rgb: Rgb(135, 0, 0),
  );
  static const AnsiColor deepPink8 = AnsiColor._(
    value: 89,
    name: 'Deep Pink 8',
    hex: '#87005f',
    rgb: Rgb(135, 0, 95),
  );
  static const AnsiColor darkMagenta = AnsiColor._(
    value: 90,
    name: 'Dark Magenta',
    hex: '#870087',
    rgb: Rgb(135, 0, 135),
  );
  static const AnsiColor darkMagenta2 = AnsiColor._(
    value: 91,
    name: 'Dark Magenta 2',
    hex: '#8700af',
    rgb: Rgb(135, 0, 175),
  );
  static const AnsiColor darkViolet2 = AnsiColor._(
    value: 92,
    name: 'Dark Violet 2',
    hex: '#8700d7',
    rgb: Rgb(135, 0, 215),
  );
  static const AnsiColor purple = AnsiColor._(
    value: 93,
    name: 'Purple',
    hex: '#8700ff',
    rgb: Rgb(135, 0, 255),
  );
  static const AnsiColor orange4 = AnsiColor._(
    value: 94,
    name: 'Orange 4',
    hex: '#875f00',
    rgb: Rgb(135, 95, 0),
  );
  static const AnsiColor lightPink4 = AnsiColor._(
    value: 95,
    name: 'Light Pink 4',
    hex: '#875f5f',
    rgb: Rgb(135, 95, 95),
  );
  static const AnsiColor plum4 = AnsiColor._(
    value: 96,
    name: 'Plum 4',
    hex: '#875f87',
    rgb: Rgb(135, 95, 135),
  );
  static const AnsiColor mediumPurple3 = AnsiColor._(
    value: 97,
    name: 'Medium Purple 3',
    hex: '#875faf',
    rgb: Rgb(135, 95, 175),
  );
  static const AnsiColor mediumPurple6 = AnsiColor._(
    value: 98,
    name: 'Medium Purple 6',
    hex: '#875fd7',
    rgb: Rgb(135, 95, 215),
  );
  static const AnsiColor slateBlue1 = AnsiColor._(
    value: 99,
    name: 'Slate Blue 1',
    hex: '#875fff',
    rgb: Rgb(135, 95, 255),
  );
  static const AnsiColor yellow6 = AnsiColor._(
    value: 100,
    name: 'Yellow 6',
    hex: '#878700',
    rgb: Rgb(135, 135, 0),
  );
  static const AnsiColor wheat4 = AnsiColor._(
    value: 101,
    name: 'Wheat 4',
    hex: '#87875f',
    rgb: Rgb(135, 135, 95),
  );
  static const AnsiColor grey53 = AnsiColor._(
    value: 102,
    name: 'Grey 53',
    hex: '#878787',
    rgb: Rgb(135, 135, 135),
  );
  static const AnsiColor lightSlateGrey = AnsiColor._(
    value: 103,
    name: 'Light Slate Grey',
    hex: '#8787af',
    rgb: Rgb(135, 135, 175),
  );
  static const AnsiColor mediumPurple = AnsiColor._(
    value: 104,
    name: 'Medium Purple',
    hex: '#8787d7',
    rgb: Rgb(135, 135, 215),
  );
  static const AnsiColor lightSlateBlue = AnsiColor._(
    value: 105,
    name: 'Light Slate Blue',
    hex: '#8787ff',
    rgb: Rgb(135, 135, 255),
  );
  static const AnsiColor yellow4 = AnsiColor._(
    value: 106,
    name: 'Yellow 4',
    hex: '#87af00',
    rgb: Rgb(135, 175, 0),
  );
  static const AnsiColor darkOliveGreen5 = AnsiColor._(
    value: 107,
    name: 'Dark Olive Green 5',
    hex: '#87af5f',
    rgb: Rgb(135, 175, 95),
  );
  static const AnsiColor darkSeaGreen = AnsiColor._(
    value: 108,
    name: 'Dark Sea Green',
    hex: '#87af87',
    rgb: Rgb(135, 175, 135),
  );
  static const AnsiColor lightSkyBlue2 = AnsiColor._(
    value: 109,
    name: 'Light Sky Blue 2',
    hex: '#87afaf',
    rgb: Rgb(135, 175, 175),
  );
  static const AnsiColor lightSkyBlue3 = AnsiColor._(
    value: 110,
    name: 'Light SkyBlue 3',
    hex: '#87afd7',
    rgb: Rgb(135, 175, 215),
  );
  static const AnsiColor skyBlue2 = AnsiColor._(
    value: 111,
    name: 'Sky Blue 2',
    hex: '#87afff',
    rgb: Rgb(135, 175, 255),
  );
  static const AnsiColor chartreuse5 = AnsiColor._(
    value: 112,
    name: 'Chartreuse 5',
    hex: '#87d700',
    rgb: Rgb(135, 215, 0),
  );
  static const AnsiColor darkOliveGreen6 = AnsiColor._(
    value: 113,
    name: 'Dark Olive Green 6',
    hex: '#87d75f',
    rgb: Rgb(135, 215, 95),
  );
  static const AnsiColor paleGreen3 = AnsiColor._(
    value: 114,
    name: 'Pale Green 3',
    hex: '#87d787',
    rgb: Rgb(135, 215, 135),
  );
  static const AnsiColor darkSeaGreen3 = AnsiColor._(
    value: 115,
    name: 'Dark Sea Green 3',
    hex: '#87d7af',
    rgb: Rgb(135, 215, 175),
  );
  static const AnsiColor darkSlateGray3 = AnsiColor._(
    value: 116,
    name: 'Dark Slate Gray 3',
    hex: '#87d7d7',
    rgb: Rgb(135, 215, 215),
  );
  static const AnsiColor skyBlue1 = AnsiColor._(
    value: 117,
    name: 'Sky Blue 1',
    hex: '#87d7ff',
    rgb: Rgb(135, 215, 255),
  );
  static const AnsiColor chartreuse1 = AnsiColor._(
    value: 118,
    name: 'Chartreuse 1',
    hex: '#87ff00',
    rgb: Rgb(135, 255, 0),
  );
  static const AnsiColor lightGreen = AnsiColor._(
    value: 119,
    name: 'Light Green',
    hex: '#87ff5f',
    rgb: Rgb(135, 255, 95),
  );
  static const AnsiColor lightGreen2 = AnsiColor._(
    value: 120,
    name: 'Light Green 2',
    hex: '#87ff87',
    rgb: Rgb(135, 255, 135),
  );
  static const AnsiColor paleGreen1 = AnsiColor._(
    value: 121,
    name: 'Pale Green 1',
    hex: '#87ffaf',
    rgb: Rgb(135, 255, 175),
  );
  static const AnsiColor aquamarine1 = AnsiColor._(
    value: 122,
    name: 'Aquamarine 1',
    hex: '#87ffd7',
    rgb: Rgb(135, 255, 215),
  );
  static const AnsiColor darkSlateGray1 = AnsiColor._(
    value: 123,
    name: 'Dark Slate Gray 1',
    hex: '#87ffff',
    rgb: Rgb(135, 255, 255),
  );
  static const AnsiColor red3 = AnsiColor._(
    value: 124,
    name: 'Red 3',
    hex: '#af0000',
    rgb: Rgb(175, 0, 0),
  );
  static const AnsiColor deepPink4 = AnsiColor._(
    value: 125,
    name: 'Deep Pink 4',
    hex: '#af005f',
    rgb: Rgb(175, 0, 95),
  );
  static const AnsiColor mediumVioletRed = AnsiColor._(
    value: 126,
    name: 'Medium Violet Red',
    hex: '#af0087',
    rgb: Rgb(175, 0, 135),
  );
  static const AnsiColor magenta5 = AnsiColor._(
    value: 127,
    name: 'Magenta 5',
    hex: '#af00af',
    rgb: Rgb(175, 0, 175),
  );
  static const AnsiColor darkViolet = AnsiColor._(
    value: 128,
    name: 'Dark Violet',
    hex: '#af00d7',
    rgb: Rgb(175, 0, 215),
  );
  static const AnsiColor purple2 = AnsiColor._(
    value: 129,
    name: 'Purple 2',
    hex: '#af00ff',
    rgb: Rgb(175, 0, 255),
  );
  static const AnsiColor darkOrange2 = AnsiColor._(
    value: 130,
    name: 'Dark Orange 2',
    hex: '#af5f00',
    rgb: Rgb(175, 95, 0),
  );
  static const AnsiColor indianRed = AnsiColor._(
    value: 131,
    name: 'Indian Red',
    hex: '#af5f5f',
    rgb: Rgb(175, 95, 95),
  );
  static const AnsiColor hotPink4 = AnsiColor._(
    value: 132,
    name: 'Hot Pink 4',
    hex: '#af5f87',
    rgb: Rgb(175, 95, 135),
  );
  static const AnsiColor mediumOrchid3 = AnsiColor._(
    value: 133,
    name: 'Medium Orchid 3',
    hex: '#af5faf',
    rgb: Rgb(175, 95, 175),
  );
  static const AnsiColor mediumOrchid = AnsiColor._(
    value: 134,
    name: 'Medium Orchid',
    hex: '#af5fd7',
    rgb: Rgb(175, 95, 215),
  );
  static const AnsiColor mediumPurple5 = AnsiColor._(
    value: 135,
    name: 'Medium Purple 5',
    hex: '#af5fff',
    rgb: Rgb(175, 95, 255),
  );
  static const AnsiColor darkGoldenrod = AnsiColor._(
    value: 136,
    name: 'Dark Goldenrod',
    hex: '#af8700',
    rgb: Rgb(175, 135, 0),
  );
  static const AnsiColor lightSalmon3 = AnsiColor._(
    value: 137,
    name: 'Light Salmon 3',
    hex: '#af875f',
    rgb: Rgb(175, 135, 95),
  );
  static const AnsiColor rosyBrown = AnsiColor._(
    value: 138,
    name: 'Rosy Brown',
    hex: '#af8787',
    rgb: Rgb(175, 135, 135),
  );
  static const AnsiColor grey63 = AnsiColor._(
    value: 139,
    name: 'Grey 63',
    hex: '#af87af',
    rgb: Rgb(175, 135, 175),
  );
  static const AnsiColor mediumPurple2 = AnsiColor._(
    value: 140,
    name: 'Medium Purple 2',
    hex: '#af87d7',
    rgb: Rgb(175, 135, 215),
  );
  static const AnsiColor mediumPurple1 = AnsiColor._(
    value: 141,
    name: 'Medium Purple 1',
    hex: '#af87ff',
    rgb: Rgb(175, 135, 255),
  );
  static const AnsiColor gold2 = AnsiColor._(
    value: 142,
    name: 'Gold 2',
    hex: '#afaf00',
    rgb: Rgb(175, 175, 0),
  );
  static const AnsiColor darkKhaki = AnsiColor._(
    value: 143,
    name: 'Dark Khaki',
    hex: '#afaf5f',
    rgb: Rgb(175, 175, 95),
  );
  static const AnsiColor navajoWhite3 = AnsiColor._(
    value: 144,
    name: 'Navajo White 3',
    hex: '#afaf87',
    rgb: Rgb(175, 175, 135),
  );
  static const AnsiColor grey69 = AnsiColor._(
    value: 145,
    name: 'Grey 69',
    hex: '#afafaf',
    rgb: Rgb(175, 175, 175),
  );
  static const AnsiColor lightSteelBlue3 = AnsiColor._(
    value: 146,
    name: 'Light Steel Blue 3',
    hex: '#afafd7',
    rgb: Rgb(175, 175, 215),
  );
  static const AnsiColor lightSteelBlue = AnsiColor._(
    value: 147,
    name: 'Light Steel Blue',
    hex: '#afafff',
    rgb: Rgb(175, 175, 255),
  );
  static const AnsiColor yellow5 = AnsiColor._(
    value: 148,
    name: 'Yellow 5',
    hex: '#afd700',
    rgb: Rgb(175, 215, 0),
  );
  static const AnsiColor darkOliveGreen3 = AnsiColor._(
    value: 149,
    name: 'Dark Olive Green 3',
    hex: '#afd75f',
    rgb: Rgb(175, 215, 95),
  );
  static const AnsiColor darkSeaGreen7 = AnsiColor._(
    value: 150,
    name: 'Dark Sea Green 7',
    hex: '#afd787',
    rgb: Rgb(175, 215, 135),
  );
  static const AnsiColor darkSeaGreen6 = AnsiColor._(
    value: 151,
    name: 'Dark Sea Green 6',
    hex: '#afd7af',
    rgb: Rgb(175, 215, 175),
  );
  static const AnsiColor lightCyan3 = AnsiColor._(
    value: 152,
    name: 'Light Cyan 3',
    hex: '#afd7d7',
    rgb: Rgb(175, 215, 215),
  );
  static const AnsiColor lightSkyBlue1 = AnsiColor._(
    value: 153,
    name: 'Light Sky Blue 1',
    hex: '#afd7ff',
    rgb: Rgb(175, 215, 255),
  );
  static const AnsiColor greenYellow = AnsiColor._(
    value: 154,
    name: 'Green Yellow',
    hex: '#afff00',
    rgb: Rgb(175, 255, 0),
  );
  static const AnsiColor darkOliveGreen2 = AnsiColor._(
    value: 155,
    name: 'Dark Olive Green 2',
    hex: '#afff5f',
    rgb: Rgb(175, 255, 95),
  );
  static const AnsiColor paleGreen2 = AnsiColor._(
    value: 156,
    name: 'Pale Green 2',
    hex: '#afff87',
    rgb: Rgb(175, 255, 135),
  );
  static const AnsiColor darkSeaGreen2 = AnsiColor._(
    value: 157,
    name: 'Dark Sea Green 2',
    hex: '#afffaf',
    rgb: Rgb(175, 255, 175),
  );
  static const AnsiColor darkSeaGreen1 = AnsiColor._(
    value: 158,
    name: 'Dark Sea Green 1',
    hex: '#afffd7',
    rgb: Rgb(175, 255, 215),
  );
  static const AnsiColor paleTurquoise1 = AnsiColor._(
    value: 159,
    name: 'Pale Turquoise 1',
    hex: '#afffff',
    rgb: Rgb(175, 255, 255),
  );
  static const AnsiColor red2 = AnsiColor._(
    value: 160,
    name: 'Red 2',
    hex: '#d70000',
    rgb: Rgb(215, 0, 0),
  );
  static const AnsiColor deepPink6 = AnsiColor._(
    value: 161,
    name: 'Deep Pink 6',
    hex: '#d7005f',
    rgb: Rgb(215, 0, 95),
  );
  static const AnsiColor deepPink3 = AnsiColor._(
    value: 162,
    name: 'Deep Pink 3',
    hex: '#d70087',
    rgb: Rgb(215, 0, 135),
  );
  static const AnsiColor magenta6 = AnsiColor._(
    value: 163,
    name: 'Magenta 6',
    hex: '#d700af',
    rgb: Rgb(215, 0, 175),
  );
  static const AnsiColor magenta3 = AnsiColor._(
    value: 164,
    name: 'Magenta 3',
    hex: '#d700d7',
    rgb: Rgb(215, 0, 215),
  );
  static const AnsiColor magenta4 = AnsiColor._(
    value: 165,
    name: 'Magenta 4',
    hex: '#d700ff',
    rgb: Rgb(215, 0, 255),
  );
  static const AnsiColor darkOrange3 = AnsiColor._(
    value: 166,
    name: 'Dark Orange 3',
    hex: '#d75f00',
    rgb: Rgb(215, 95, 0),
  );
  static const AnsiColor indianRed4 = AnsiColor._(
    value: 167,
    name: 'Indian Red 4',
    hex: '#d75f5f',
    rgb: Rgb(215, 95, 95),
  );
  static const AnsiColor hotPink3 = AnsiColor._(
    value: 168,
    name: 'Hot Pink 3',
    hex: '#d75f87',
    rgb: Rgb(215, 95, 135),
  );
  static const AnsiColor hotPink2 = AnsiColor._(
    value: 169,
    name: 'Hot Pink 2',
    hex: '#d75faf',
    rgb: Rgb(215, 95, 175),
  );
  static const AnsiColor orchid = AnsiColor._(
    value: 170,
    name: 'Orchid',
    hex: '#d75fd7',
    rgb: Rgb(215, 95, 215),
  );
  static const AnsiColor mediumOrchid2 = AnsiColor._(
    value: 171,
    name: 'Medium Orchid 2',
    hex: '#d75fff',
    rgb: Rgb(215, 95, 255),
  );
  static const AnsiColor orange3 = AnsiColor._(
    value: 172,
    name: 'Orange 3',
    hex: '#d78700',
    rgb: Rgb(215, 135, 0),
  );
  static const AnsiColor lightSalmon2 = AnsiColor._(
    value: 173,
    name: 'Light Salmon 2',
    hex: '#d7875f',
    rgb: Rgb(215, 135, 95),
  );
  static const AnsiColor lightPink3 = AnsiColor._(
    value: 174,
    name: 'Light Pink 3',
    hex: '#d78787',
    rgb: Rgb(215, 135, 135),
  );
  static const AnsiColor pink3 = AnsiColor._(
    value: 175,
    name: 'Pink 3',
    hex: '#d787af',
    rgb: Rgb(215, 135, 175),
  );
  static const AnsiColor plum3 = AnsiColor._(
    value: 176,
    name: 'Plum 3',
    hex: '#d787d7',
    rgb: Rgb(215, 135, 215),
  );
  static const AnsiColor violet = AnsiColor._(
    value: 177,
    name: 'Violet',
    hex: '#d787ff',
    rgb: Rgb(215, 135, 255),
  );
  static const AnsiColor gold3 = AnsiColor._(
    value: 178,
    name: 'Gold 3',
    hex: '#d7af00',
    rgb: Rgb(215, 175, 0),
  );
  static const AnsiColor lightGoldenrod3 = AnsiColor._(
    value: 179,
    name: 'Light Goldenrod 3',
    hex: '#d7af5f',
    rgb: Rgb(215, 175, 95),
  );
  static const AnsiColor tan = AnsiColor._(
    value: 180,
    name: 'Tan',
    hex: '#d7af87',
    rgb: Rgb(215, 175, 135),
  );
  static const AnsiColor mistyRose3 = AnsiColor._(
    value: 181,
    name: 'Misty Rose 3',
    hex: '#d7afaf',
    rgb: Rgb(215, 175, 175),
  );
  static const AnsiColor thistle3 = AnsiColor._(
    value: 182,
    name: 'Thistle 3',
    hex: '#d7afd7',
    rgb: Rgb(215, 175, 215),
  );
  static const AnsiColor plum2 = AnsiColor._(
    value: 183,
    name: 'Plum 2',
    hex: '#d7afff',
    rgb: Rgb(215, 175, 255),
  );
  static const AnsiColor yellow3 = AnsiColor._(
    value: 184,
    name: 'Yellow 3',
    hex: '#d7d700',
    rgb: Rgb(215, 215, 0),
  );
  static const AnsiColor khaki3 = AnsiColor._(
    value: 185,
    name: 'Khaki 3',
    hex: '#d7d75f',
    rgb: Rgb(215, 215, 95),
  );
  static const AnsiColor lightGoldenrod4 = AnsiColor._(
    value: 186,
    name: 'Light Goldenrod 4',
    hex: '#d7d787',
    rgb: Rgb(215, 215, 135),
  );
  static const AnsiColor lightYellow3 = AnsiColor._(
    value: 187,
    name: 'Light Yellow 3',
    hex: '#d7d7af',
    rgb: Rgb(215, 215, 175),
  );
  static const AnsiColor grey84 = AnsiColor._(
    value: 188,
    name: 'Grey 84',
    hex: '#d7d7d7',
    rgb: Rgb(215, 215, 215),
  );
  static const AnsiColor lightSteelBlue1 = AnsiColor._(
    value: 189,
    name: 'Light Steel Blue 1',
    hex: '#d7d7ff',
    rgb: Rgb(215, 215, 255),
  );
  static const AnsiColor yellow2 = AnsiColor._(
    value: 190,
    name: 'Yellow 2',
    hex: '#d7ff00',
    rgb: Rgb(215, 255, 0),
  );
  static const AnsiColor darkOliveGreen4 = AnsiColor._(
    value: 191,
    name: 'Dark Olive Green 4',
    hex: '#d7ff5f',
    rgb: Rgb(215, 255, 95),
  );
  static const AnsiColor darkOliveGreen1 = AnsiColor._(
    value: 192,
    name: 'Dark Olive Green 1',
    hex: '#d7ff87',
    rgb: Rgb(215, 255, 135),
  );
  static const AnsiColor darkSeaGreen5 = AnsiColor._(
    value: 193,
    name: 'Dark Sea Green 5',
    hex: '#d7ffaf',
    rgb: Rgb(215, 255, 175),
  );
  static const AnsiColor honeydew2 = AnsiColor._(
    value: 194,
    name: 'Honeydew 2',
    hex: '#d7ffd7',
    rgb: Rgb(215, 255, 215),
  );
  static const AnsiColor lightCyan1 = AnsiColor._(
    value: 195,
    name: 'Light Cyan 1',
    hex: '#d7ffff',
    rgb: Rgb(215, 255, 255),
  );
  static const AnsiColor red1 = AnsiColor._(
    value: 196,
    name: 'Red1',
    hex: '#ff0000',
    rgb: Rgb(255, 0, 0),
  );
  static const AnsiColor deepPink2 = AnsiColor._(
    value: 197,
    name: 'Deep Pink 2',
    hex: '#ff005f',
    rgb: Rgb(255, 0, 95),
  );
  static const AnsiColor deepPink1 = AnsiColor._(
    value: 198,
    name: 'Deep Pink 1',
    hex: '#ff0087',
    rgb: Rgb(255, 0, 135),
  );
  static const AnsiColor deepPink5 = AnsiColor._(
    value: 199,
    name: 'Deep Pink 5',
    hex: '#ff00af',
    rgb: Rgb(255, 0, 175),
  );
  static const AnsiColor magenta2 = AnsiColor._(
    value: 200,
    name: 'Magenta 2',
    hex: '#ff00d7',
    rgb: Rgb(255, 0, 215),
  );
  static const AnsiColor magenta1 = AnsiColor._(
    value: 201,
    name: 'Magenta 1',
    hex: '#ff00ff',
    rgb: Rgb(255, 0, 255),
  );
  static const AnsiColor orangeRed1 = AnsiColor._(
    value: 202,
    name: 'Orange Red 1',
    hex: '#ff5f00',
    rgb: Rgb(255, 95, 0),
  );
  static const AnsiColor indianRed1 = AnsiColor._(
    value: 203,
    name: 'Indian Red 1',
    hex: '#ff5f5f',
    rgb: Rgb(255, 95, 95),
  );
  static const AnsiColor indianRed2 = AnsiColor._(
    value: 204,
    name: 'Indian Red 2',
    hex: '#ff5f87',
    rgb: Rgb(255, 95, 135),
  );
  static const AnsiColor hotPink1 = AnsiColor._(
    value: 205,
    name: 'Hot Pink 1',
    hex: '#ff5faf',
    rgb: Rgb(255, 95, 175),
  );
  static const AnsiColor hotPink = AnsiColor._(
    value: 206,
    name: 'Hot Pink',
    hex: '#ff5fd7',
    rgb: Rgb(255, 95, 215),
  );
  static const AnsiColor mediumOrchid1 = AnsiColor._(
    value: 207,
    name: 'Medium Orchid 1',
    hex: '#ff5fff',
    rgb: Rgb(255, 95, 255),
  );
  static const AnsiColor darkOrange = AnsiColor._(
    value: 208,
    name: 'Dark Orange',
    hex: '#ff8700',
    rgb: Rgb(255, 135, 0),
  );
  static const AnsiColor salmon1 = AnsiColor._(
    value: 209,
    name: 'Salmon 1',
    hex: '#ff875f',
    rgb: Rgb(255, 135, 95),
  );
  static const AnsiColor lightCoral = AnsiColor._(
    value: 210,
    name: 'Light Coral',
    hex: '#ff8787',
    rgb: Rgb(255, 135, 135),
  );
  static const AnsiColor paleVioletRed1 = AnsiColor._(
    value: 211,
    name: 'Pale Violet Red 1',
    hex: '#ff87af',
    rgb: Rgb(255, 135, 175),
  );
  static const AnsiColor orchid2 = AnsiColor._(
    value: 212,
    name: 'Orchid 2',
    hex: '#ff87d7',
    rgb: Rgb(255, 135, 215),
  );
  static const AnsiColor orchid1 = AnsiColor._(
    value: 213,
    name: 'Orchid 1',
    hex: '#ff87ff',
    rgb: Rgb(255, 135, 255),
  );
  static const AnsiColor orange1 = AnsiColor._(
    value: 214,
    name: 'Orange 1',
    hex: '#ffaf00',
    rgb: Rgb(255, 175, 0),
  );
  static const AnsiColor sandyBrown = AnsiColor._(
    value: 215,
    name: 'Sandy Brown',
    hex: '#ffaf5f',
    rgb: Rgb(255, 175, 95),
  );
  static const AnsiColor lightSalmon1 = AnsiColor._(
    value: 216,
    name: 'Light Salmon 1',
    hex: '#ffaf87',
    rgb: Rgb(255, 175, 135),
  );
  static const AnsiColor lightPink1 = AnsiColor._(
    value: 217,
    name: 'Light Pink 1',
    hex: '#ffafaf',
    rgb: Rgb(255, 175, 175),
  );
  static const AnsiColor pink1 = AnsiColor._(
    value: 218,
    name: 'Pink 1',
    hex: '#ffafd7',
    rgb: Rgb(255, 175, 215),
  );
  static const AnsiColor plum1 = AnsiColor._(
    value: 219,
    name: 'Plum 1',
    hex: '#ffafff',
    rgb: Rgb(255, 175, 255),
  );
  static const AnsiColor gold1 = AnsiColor._(
    value: 220,
    name: 'Gold 1',
    hex: '#ffd700',
    rgb: Rgb(255, 215, 0),
  );
  static const AnsiColor lightGoldenrod5 = AnsiColor._(
    value: 221,
    name: 'Light Goldenrod 5',
    hex: '#ffd75f',
    rgb: Rgb(255, 215, 95),
  );
  static const AnsiColor lightGoldenrod2 = AnsiColor._(
    value: 222,
    name: 'Light Goldenrod 2',
    hex: '#ffd787',
    rgb: Rgb(255, 215, 135),
  );
  static const AnsiColor navajoWhite1 = AnsiColor._(
    value: 223,
    name: 'Navajo White 1',
    hex: '#ffd7af',
    rgb: Rgb(255, 215, 175),
  );
  static const AnsiColor mistyRose1 = AnsiColor._(
    value: 224,
    name: 'Misty Rose 1',
    hex: '#ffd7d7',
    rgb: Rgb(255, 215, 215),
  );
  static const AnsiColor thistle1 = AnsiColor._(
    value: 225,
    name: 'Thistle 1',
    hex: '#ffd7ff',
    rgb: Rgb(255, 215, 255),
  );
  static const AnsiColor yellow1 = AnsiColor._(
    value: 226,
    name: 'Yellow 1',
    hex: '#ffff00',
    rgb: Rgb(255, 255, 0),
  );
  static const AnsiColor lightGoldenrod1 = AnsiColor._(
    value: 227,
    name: 'Light Goldenrod 1',
    hex: '#ffff5f',
    rgb: Rgb(255, 255, 95),
  );
  static const AnsiColor khaki1 = AnsiColor._(
    value: 228,
    name: 'Khaki 1',
    hex: '#ffff87',
    rgb: Rgb(255, 255, 135),
  );
  static const AnsiColor wheat1 = AnsiColor._(
    value: 229,
    name: 'Wheat 1',
    hex: '#ffffaf',
    rgb: Rgb(255, 255, 175),
  );
  static const AnsiColor cornsilk1 = AnsiColor._(
    value: 230,
    name: 'Cornsilk 1',
    hex: '#ffffd7',
    rgb: Rgb(255, 255, 215),
  );
  static const AnsiColor grey100 = AnsiColor._(
    value: 231,
    name: 'Grey 100',
    hex: '#ffffff',
    rgb: Rgb(255, 255, 255),
  );
  static const AnsiColor grey3 = AnsiColor._(
    value: 232,
    name: 'Grey 3',
    hex: '#080808',
    rgb: Rgb(8, 8, 8),
  );
  static const AnsiColor grey7 = AnsiColor._(
    value: 233,
    name: 'Grey 7',
    hex: '#121212',
    rgb: Rgb(18, 18, 18),
  );
  static const AnsiColor grey11 = AnsiColor._(
    value: 234,
    name: 'Grey 11',
    hex: '#1c1c1c',
    rgb: Rgb(28, 28, 28),
  );
  static const AnsiColor grey15 = AnsiColor._(
    value: 235,
    name: 'Grey 15',
    hex: '#262626',
    rgb: Rgb(38, 38, 38),
  );
  static const AnsiColor grey19 = AnsiColor._(
    value: 236,
    name: 'Grey 19',
    hex: '#303030',
    rgb: Rgb(48, 48, 48),
  );
  static const AnsiColor grey23 = AnsiColor._(
    value: 237,
    name: 'Grey 23',
    hex: '#3a3a3a',
    rgb: Rgb(58, 58, 58),
  );
  static const AnsiColor grey27 = AnsiColor._(
    value: 238,
    name: 'Grey 27',
    hex: '#444444',
    rgb: Rgb(68, 68, 68),
  );
  static const AnsiColor grey30 = AnsiColor._(
    value: 239,
    name: 'Grey 30',
    hex: '#4e4e4e',
    rgb: Rgb(78, 78, 78),
  );
  static const AnsiColor grey35 = AnsiColor._(
    value: 240,
    name: 'Grey 35',
    hex: '#585858',
    rgb: Rgb(88, 88, 88),
  );
  static const AnsiColor grey39 = AnsiColor._(
    value: 241,
    name: 'Grey 39',
    hex: '#626262',
    rgb: Rgb(98, 98, 98),
  );
  static const AnsiColor grey42 = AnsiColor._(
    value: 242,
    name: 'Grey 42',
    hex: '#6c6c6c',
    rgb: Rgb(108, 108, 108),
  );
  static const AnsiColor grey46 = AnsiColor._(
    value: 243,
    name: 'Grey 46',
    hex: '#767676',
    rgb: Rgb(118, 118, 118),
  );
  static const AnsiColor grey50 = AnsiColor._(
    value: 244,
    name: 'Grey 50',
    hex: '#808080',
    rgb: Rgb(128, 128, 128),
  );
  static const AnsiColor grey54 = AnsiColor._(
    value: 245,
    name: 'Grey 54',
    hex: '#8a8a8a',
    rgb: Rgb(138, 138, 138),
  );
  static const AnsiColor grey58 = AnsiColor._(
    value: 246,
    name: 'Grey 58',
    hex: '#949494',
    rgb: Rgb(148, 148, 148),
  );
  static const AnsiColor grey62 = AnsiColor._(
    value: 247,
    name: 'Grey 62',
    hex: '#9e9e9e',
    rgb: Rgb(158, 158, 158),
  );
  static const AnsiColor grey66 = AnsiColor._(
    value: 248,
    name: 'Grey 66',
    hex: '#a8a8a8',
    rgb: Rgb(168, 168, 168),
  );
  static const AnsiColor grey70 = AnsiColor._(
    value: 249,
    name: 'Grey 70',
    hex: '#b2b2b2',
    rgb: Rgb(178, 178, 178),
  );
  static const AnsiColor grey74 = AnsiColor._(
    value: 250,
    name: 'Grey 74',
    hex: '#bcbcbc',
    rgb: Rgb(188, 188, 188),
  );
  static const AnsiColor grey78 = AnsiColor._(
    value: 251,
    name: 'Grey 78',
    hex: '#c6c6c6',
    rgb: Rgb(198, 198, 198),
  );
  static const AnsiColor grey82 = AnsiColor._(
    value: 252,
    name: 'Grey 82',
    hex: '#d0d0d0',
    rgb: Rgb(208, 208, 208),
  );
  static const AnsiColor grey85 = AnsiColor._(
    value: 253,
    name: 'Grey 85',
    hex: '#dadada',
    rgb: Rgb(218, 218, 218),
  );
  static const AnsiColor grey89 = AnsiColor._(
    value: 254,
    name: 'Grey 89',
    hex: '#e4e4e4',
    rgb: Rgb(228, 228, 228),
  );
  static const AnsiColor grey93 = AnsiColor._(
    value: 255,
    name: 'Grey 93',
    hex: '#eeeeee',
    rgb: Rgb(238, 238, 238),
  );

  const AnsiColor._({
    required this.value,
    required this.name,
    required this.hex,
    this.rgb,
    this.hsl,
  });

  final int value;
  final String name;
  final String hex;
  final Rgb? rgb;
  final Hsl? hsl;

  /// Foreground 8 bit 256 color code
  @pragma('vm:prefer-inline')
  String get foreground {
    return value < 0 ? '' : '$foregroundColorStartCode$value$colorEndCode';
  }

  /// Background 8 bit 256 color code
  @pragma('vm:prefer-inline')
  String get background {
    return value < 0 ? '' : '$backgroundColorStartCode$value$colorEndCode';
  }

  /// Foreground 24 bit rgb color code
  @pragma('vm:prefer-inline')
  String get foregroundRgb {
    return rgb == null ? '' : '$foregroundRgbColorStartCode${rgb!.toAnsiString()}$colorEndCode';
  }

  /// Background 24 bit rgb color code
  @pragma('vm:prefer-inline')
  String get backgroundRgb {
    return rgb == null ? '' : '$backgroundRgbColorStartCode${rgb!.toAnsiString()}$colorEndCode';
  }

  /// Returns the relative luminance of the [AnsiColor]
  /// https://en.wikipedia.org/wiki/Relative_luminance
  @pragma('vm:prefer-inline')
  int? get lightness {
    if (hsl != null) {
      return hsl!.lightness;
    }
    if (rgb != null) {
      return (0.2126 * rgb!.red + 0.7152 * rgb!.green + 0.0722 * rgb!.blue).floor();
    }
    return null;
  }

  @override
  String toString() {
    return '$name ($hex)';
  }

  static const List<AnsiColor> system = <AnsiColor>[
    black,
    maroon,
    green,
    olive,
    navy,
    magenta,
    teal,
    silver,
    grey,
    red,
    lime,
    yellow,
    blue,
    fuchsia,
    aqua,
    white
  ];

  static const List<AnsiColor> greyscale = <AnsiColor>[
    grey0,
    grey3,
    grey7,
    grey11,
    grey15,
    grey19,
    grey23,
    grey27,
    grey30,
    grey35,
    grey37,
    grey39,
    grey42,
    grey46,
    grey50,
    grey53,
    grey54,
    grey58,
    grey62,
    grey63,
    grey66,
    grey69,
    grey70,
    grey74,
    grey78,
    grey82,
    grey84,
    grey85,
    grey89,
    grey93,
    grey100,
  ];

  static const List<AnsiColor> extended = <AnsiColor>[
    navyBlue,
    darkBlue,
    blue3,
    blue2,
    blue1,
    darkGreen,
    deepSkyBlue6,
    deepSkyBlue7,
    deepSkyBlue4,
    dodgerBlue3,
    dodgerBlue2,
    green4,
    springGreen4,
    turquoise4,
    deepSkyBlue5,
    deepSkyBlue3,
    dodgerBlue1,
    green2,
    springGreen6,
    darkCyan,
    lightSeaGreen,
    deepSkyBlue2,
    deepSkyBlue1,
    green3,
    springGreen3,
    springGreen5,
    cyan3,
    darkTurquoise,
    turquoise2,
    green1,
    springGreen2,
    springGreen1,
    mediumSpringGreen,
    cyan2,
    cyan1,
    darkRed,
    deepPink7,
    purple5,
    purple4,
    purple3,
    blueViolet,
    orange2,
    mediumPurple4,
    slateBlue2,
    slateBlue3,
    royalBlue1,
    chartreuse4,
    darkSeaGreen4,
    paleTurquoise4,
    steelBlue,
    steelBlue3,
    cornflowerBlue,
    chartreuse6,
    darkSeaGreen8,
    cadetBlue,
    cadetBlue2,
    skyBlue3,
    steelBlue4,
    chartreuse3,
    paleGreen4,
    seaGreen3,
    aquamarine3,
    mediumTurquoise,
    steelBlue1,
    chartreuse2,
    seaGreen2,
    seaGreen4,
    seaGreen1,
    aquamarine2,
    darkSlateGray2,
    darkRed2,
    deepPink8,
    darkMagenta,
    darkMagenta2,
    darkViolet2,
    purple,
    orange4,
    lightPink4,
    plum4,
    mediumPurple3,
    mediumPurple6,
    slateBlue1,
    yellow6,
    wheat4,
    lightSlateGrey,
    mediumPurple,
    lightSlateBlue,
    yellow4,
    darkOliveGreen5,
    darkSeaGreen,
    lightSkyBlue2,
    lightSkyBlue3,
    skyBlue2,
    chartreuse5,
    darkOliveGreen6,
    paleGreen3,
    darkSeaGreen3,
    darkSlateGray3,
    skyBlue1,
    chartreuse1,
    lightGreen,
    lightGreen2,
    paleGreen1,
    aquamarine1,
    darkSlateGray1,
    red3,
    deepPink4,
    mediumVioletRed,
    magenta5,
    darkViolet,
    purple2,
    darkOrange2,
    indianRed,
    hotPink4,
    mediumOrchid3,
    mediumOrchid,
    mediumPurple5,
    darkGoldenrod,
    lightSalmon3,
    rosyBrown,
    mediumPurple2,
    mediumPurple1,
    gold2,
    darkKhaki,
    navajoWhite3,
    lightSteelBlue3,
    lightSteelBlue,
    yellow5,
    darkOliveGreen3,
    darkSeaGreen7,
    darkSeaGreen6,
    lightCyan3,
    lightSkyBlue1,
    greenYellow,
    darkOliveGreen2,
    paleGreen2,
    darkSeaGreen2,
    darkSeaGreen1,
    paleTurquoise1,
    red2,
    deepPink6,
    deepPink3,
    magenta6,
    magenta3,
    magenta4,
    darkOrange3,
    indianRed4,
    hotPink3,
    hotPink2,
    orchid,
    mediumOrchid2,
    orange3,
    lightSalmon2,
    lightPink3,
    pink3,
    plum3,
    violet,
    gold3,
    lightGoldenrod3,
    tan,
    mistyRose3,
    thistle3,
    plum2,
    yellow3,
    khaki3,
    lightGoldenrod4,
    lightYellow3,
    lightSteelBlue1,
    yellow2,
    darkOliveGreen4,
    darkOliveGreen1,
    darkSeaGreen5,
    honeydew2,
    lightCyan1,
    red1,
    deepPink2,
    deepPink1,
    deepPink5,
    magenta2,
    magenta1,
    orangeRed1,
    indianRed1,
    indianRed2,
    hotPink1,
    hotPink,
    mediumOrchid1,
    darkOrange,
    salmon1,
    lightCoral,
    paleVioletRed1,
    orchid2,
    orchid1,
    orange1,
    sandyBrown,
    lightSalmon1,
    lightPink1,
    pink1,
    plum1,
    gold1,
    lightGoldenrod5,
    lightGoldenrod2,
    navajoWhite1,
    mistyRose1,
    thistle1,
    yellow1,
    lightGoldenrod1,
    khaki1,
    wheat1,
    cornsilk1,
  ];

  static const List<AnsiColor> all = <AnsiColor>[
    aqua,
    aquamarine1,
    aquamarine2,
    aquamarine3,
    black,
    blue,
    blue1,
    blue2,
    blue3,
    blueViolet,
    cadetBlue,
    cadetBlue2,
    chartreuse1,
    chartreuse2,
    chartreuse3,
    chartreuse4,
    chartreuse5,
    chartreuse6,
    cornflowerBlue,
    cornsilk1,
    cyan1,
    cyan2,
    cyan3,
    darkBlue,
    darkCyan,
    darkGoldenrod,
    darkGreen,
    darkKhaki,
    darkMagenta,
    darkMagenta2,
    darkOliveGreen1,
    darkOliveGreen2,
    darkOliveGreen3,
    darkOliveGreen4,
    darkOliveGreen5,
    darkOliveGreen6,
    darkOrange,
    darkOrange2,
    darkOrange3,
    darkRed,
    darkRed2,
    darkSeaGreen,
    darkSeaGreen1,
    darkSeaGreen2,
    darkSeaGreen3,
    darkSeaGreen4,
    darkSeaGreen5,
    darkSeaGreen6,
    darkSeaGreen7,
    darkSeaGreen8,
    darkSlateGray1,
    darkSlateGray2,
    darkSlateGray3,
    darkTurquoise,
    darkViolet,
    darkViolet2,
    deepPink1,
    deepPink2,
    deepPink3,
    deepPink4,
    deepPink5,
    deepPink6,
    deepPink7,
    deepPink8,
    deepSkyBlue1,
    deepSkyBlue2,
    deepSkyBlue3,
    deepSkyBlue4,
    deepSkyBlue5,
    deepSkyBlue6,
    deepSkyBlue7,
    dodgerBlue1,
    dodgerBlue2,
    dodgerBlue3,
    fuchsia,
    gold1,
    gold2,
    gold3,
    green,
    green1,
    green2,
    green3,
    green4,
    greenYellow,
    grey,
    grey0,
    grey100,
    grey11,
    grey15,
    grey19,
    grey23,
    grey27,
    grey3,
    grey30,
    grey35,
    grey37,
    grey39,
    grey42,
    grey46,
    grey50,
    grey53,
    grey54,
    grey58,
    grey62,
    grey63,
    grey66,
    grey69,
    grey7,
    grey70,
    grey74,
    grey78,
    grey82,
    grey84,
    grey85,
    grey89,
    grey93,
    honeydew2,
    hotPink,
    hotPink1,
    hotPink2,
    hotPink3,
    hotPink4,
    indianRed,
    indianRed1,
    indianRed2,
    indianRed4,
    khaki1,
    khaki3,
    lightCoral,
    lightCyan1,
    lightCyan3,
    lightGoldenrod1,
    lightGoldenrod2,
    lightGoldenrod3,
    lightGoldenrod4,
    lightGoldenrod5,
    lightGreen,
    lightGreen2,
    lightPink1,
    lightPink3,
    lightPink4,
    lightSalmon1,
    lightSalmon2,
    lightSalmon3,
    lightSeaGreen,
    lightSkyBlue1,
    lightSkyBlue2,
    lightSkyBlue3,
    lightSlateBlue,
    lightSlateGrey,
    lightSteelBlue,
    lightSteelBlue1,
    lightSteelBlue3,
    lightYellow3,
    lime,
    magenta,
    magenta1,
    magenta2,
    magenta3,
    magenta4,
    magenta5,
    magenta6,
    maroon,
    mediumOrchid,
    mediumOrchid1,
    mediumOrchid2,
    mediumOrchid3,
    mediumPurple,
    mediumPurple1,
    mediumPurple2,
    mediumPurple3,
    mediumPurple4,
    mediumPurple5,
    mediumPurple6,
    mediumSpringGreen,
    mediumTurquoise,
    mediumVioletRed,
    mistyRose1,
    mistyRose3,
    navajoWhite1,
    navajoWhite3,
    navy,
    navyBlue,
    none,
    olive,
    orange1,
    orange2,
    orange3,
    orange4,
    orangeRed1,
    orchid,
    orchid1,
    orchid2,
    paleGreen1,
    paleGreen2,
    paleGreen3,
    paleGreen4,
    paleTurquoise1,
    paleTurquoise4,
    paleVioletRed1,
    pink1,
    pink3,
    plum1,
    plum2,
    plum3,
    plum4,
    purple,
    purple2,
    purple3,
    purple4,
    purple5,
    red,
    red1,
    red2,
    red3,
    rosyBrown,
    royalBlue1,
    salmon1,
    sandyBrown,
    seaGreen1,
    seaGreen2,
    seaGreen3,
    seaGreen4,
    silver,
    skyBlue1,
    skyBlue2,
    skyBlue3,
    slateBlue1,
    slateBlue2,
    slateBlue3,
    springGreen1,
    springGreen2,
    springGreen3,
    springGreen4,
    springGreen5,
    springGreen6,
    steelBlue,
    steelBlue1,
    steelBlue3,
    steelBlue4,
    tan,
    teal,
    thistle1,
    thistle3,
    turquoise2,
    turquoise4,
    violet,
    wheat1,
    wheat4,
    white,
    yellow,
    yellow1,
    yellow2,
    yellow3,
    yellow4,
    yellow5,
    yellow6,
  ];
}
