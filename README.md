# AnsiX

#### AnsiX is an extended ANSI library that provides tools and extensions for Dart & Flutter projects.

![Dart](https://img.shields.io/badge/dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)
[![CI Workflow](https://github.com/nikosportolos/ansix/actions/workflows/ci.yml/badge.svg)](https://github.com/nikosportolos/ansix/actions/workflows/ci.yml)

<!--
[![Pub Version](https://img.shields.io/pub/v/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Points](https://img.shields.io/pub/points/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Publisher](https://img.shields.io/pub/publisher/nikosportolos)](https://github.com/nikosportolos)
-->

## Table of contents

- [Introduction](#introduction)
  - [How to use](#how-to-use)
- [Features](#ansix-features)
  - [Styles](#styles)
  - [Colors](#colors)
  - [Alignment](#alignment)
  - [Padding](#padding)
  - [Extensions](#extensions)
    - [String](#string) 
    - [StringBuffer](#stringbuffer) 
  - [Widgets](#widgets)
    - [AnsiText](#ansitext) 
      - [AnsiTextStyle](#ansitextstyle)
    - [AnsiTable](#ansitable) 
      - [AnsiBorder](#ansiborder) 
- [Examples](#examples)


## Introduction

_An early character-based display terminal that executed standard ANSI commands to control the cursor, clear the screen and set colors. 
The commands were preceded with an escape character (ANSI escape codes), and although widely used in the 1980s, ANSI commands still exist in various communications programs._

ANSI escape codes, also known as ANSI color codes or ANSI escape sequences, are a set of standardized sequences of characters used in computing to control text formatting, color, and other visual aspects of terminal output.

The ANSI escape codes consist of a special sequence of characters that begins with the escape character (ESC, ASCII code 27) followed by one or more control characters. These control characters can include commands to change the color or background of text, move the cursor to a specific location on the screen, erase part of the screen, and more.

For example, the ANSI escape code "\e[31m" changes the text color to red, while "\e[42m" changes the background color to green. The code "\e[2J" clears the entire screen, and "\e[;H" moves the cursor to the top-left corner of the screen.

ANSI escape codes are widely used in command-line interfaces, terminal emulators, and other text-based applications to provide a richer and more interactive user experience.



[Source](https://www.pcmag.com/encyclopedia/term/ansi-terminal)


## How to use


## AnsiX Features


### Styles

AnsiX supports the following text styles:

- bold
- bold underline
- dim
- inverse
- italic
- strikethrough
- underline


<img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/text-styles.png" width="400">


### Colors

Most terminals support 8 and 16 colors, as well as 256 (8-bit) colors.

- [System colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/system.md)
- [Extended colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/extended.md)
- [Greyscale colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/greyscale.md)
- [All colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/all.md)


<img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/color-tables.png" width="400">

Source: https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes

### Alignment


### Padding


## Extensions

### String

#### Styles
  - bold
  - italic
  - underline
  - strikethrough

#### Colors
  - black
  - red
  - green
  - yellow
  - blue
  - fuchsia
  - aqua
  - white


### StringBuffer

#### writeLines

Writes empty lines in buffer:

```dart
void writeLines(final int lines)
```

#### writeSpaces

Writes spaces in buffer with optional background color:

```dart
void writeSpaces(
  final int length, [
  final AnsiColor backgroundColor = AnsiColor.none,
]) 
```

#### writeColored

Writes a text in buffer with foreground color:

```dart
void writeColored(
  final String text,
  final AnsiColor color,
)
```

#### writeStyled

Writes a styled text in buffer with optional colors:

```dart
void writeStyled(
  final String text, {
  required final AnsiTextStyle textStyle,
  final AnsiColor foregroundColor = AnsiColor.none,
  final AnsiColor backgroundColor = AnsiColor.none,
}) 
```

### Widgets


#### AnsiText

```dart
AnsiText(
  'This is a demo message',
  foregroundColor: AnsiColor.white,
  backgroundColor: AnsiColor.deepSkyBlue4,
  fixedWidth: 40,
  textAlignment: AnsiTextAlignment.center,
  textStyle: const AnsiTextStyle(
    bold: true,
  ),
);
```


#### AnsiTextStyle

```dart
AnsiTextStyle(
  bold: false,
  boldUnderline: false,
  dim: false,
  inverse: false,
  italic: false,
  strikethrough: false,
  underline: false,
)
```


#### AnsiTable


#### AnsiBorder


## Examples

You can check the [examples](https://github.com/nikosportolos/ansix/tree/main/examples) folder for samples. 
