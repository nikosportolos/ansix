# AnsiX

#### AnsiX is an extended ANSI library that provides tools and extensions for Dart & Flutter projects.

[![CI Workflow](https://github.com/nikosportolos/ansix/actions/workflows/ci.yml/badge.svg)](https://github.com/nikosportolos/ansix/actions/workflows/ci.yml)

<!--
[![Pub Version](https://img.shields.io/pub/v/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Points](https://img.shields.io/pub/points/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Publisher](https://img.shields.io/pub/publisher/nikosportolos)](https://github.com/nikosportolos)
-->

## Table of contents

- [Introduction](#introduction)
- [Core](#core)
  - [Styles](#styles)
  - [Colors](#colors)
  - [Extensions](#extensions)
- [Widgets](#widgets)
  - [AnsiText](#ansitext) 
  - [AnsiTable](#ansitable) 
- [Examples](#examples)


## Introduction

_An early character-based display terminal that executed standard ANSI commands to control the cursor, clear the screen and set colors. 
The commands were preceded with an escape character (ANSI escape codes), and although widely used in the 1980s, ANSI commands still exist in various communications programs._

[Source](https://www.pcmag.com/encyclopedia/term/ansi-terminal)

## Styles

AnsiX supports the following text styles:

- bold
- bold underline
- dim
- inverse
- italic
- strikethrough
- underline


<img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/text-styles.png" width="400">


## Colors

Most terminals support 8 and 16 colors, as well as 256 (8-bit) colors.

- [System colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/system.md)
- [Extended colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/extended.md)
- [Greyscale colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/greyscale.md)
- [All colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/all.md)


<img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/color-tables.png" width="400">

Source: https://gist.github.com/fnky/458719343aabd01cfb17a3a4f7296797#color-codes

## Widgets

### AnsiText

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
  bold: true,
  underline: false,
  italic: true,
  strikethrough: false,
  boldUnderline: false,
  dim: false,
  inverse: false,
)
```


### AnsiTable

## Examples

You can check the [examples](https://github.com/nikosportolos/ansix/tree/main/examples) folder for samples. 