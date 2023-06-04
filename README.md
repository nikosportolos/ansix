# AnsiX

[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
[![Pub Version](https://img.shields.io/pub/v/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Build](https://github.com/nikosportolos/ansix/actions/workflows/build.yml/badge.svg)](https://github.com/nikosportolos/ansix/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/nikosportolos/ansix/branch/main/graph/badge.svg?token=RBU7C1V1UO)](https://codecov.io/gh/nikosportolos/ansix)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/AnsiX.gif" target="_blank"><img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/AnsiX.gif" width="500" alt="ansix"></a>

AnsiX is a powerful and easy-to-use library that provides tools and extensions for adding ANSI color and styling support to your Dart & Flutter applications. 

You can easily create colorful and visually appealing output for your command-line interfaces, 
including bold, italic, underline, and strikethrough text, as well as foreground and background colors in a
wide range of ANSI-compatible terminals.

Whether you're building a CLI tool, a dart server, or a Flutter application, 
AnsiX makes it easy to add ANSI styling to your output with minimal effort and maximum flexibility. 


<!--
[![Pub Points](https://img.shields.io/pub/points/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Publisher](https://img.shields.io/pub/publisher/nikosportolos)](https://github.com/nikosportolos)
-->

## Table of contents

- [Introduction](#introduction)
- [AnsiX Features](#ansix-features)
  - [ANSI Support](#ansi-support)
    - [ANSI support detection](#ansi-support-detection)
    - [Ensure ANSI support](#ensure-ansi-support)
    - [Force usage of ANSI escape codes](#force-usage-of-ansi-escape-codes)
    - [Enable/Disable AnsiX](#enabledisable-ansix)
  - [Theme](#theme)
    - [Styles](#styles)
    - [Colors](#colors)
      - [Color sets](#ansi-color-sets)
    - [Text alignment](#text-alignment)
  - [Extensions](#extensions)
    - [String](#string) 
    - [StringBuffer](#stringbuffer) 
  - [Widgets](#widgets)
    - [AnsiText](#ansitext) 
      - [AnsiTextStyle](#ansitextstyle)
    - [AnsiOutlinedText](#ansioutlinedtext)
    - [AnsiTable](#ansitable) 
      - [AnsiBorder](#ansiborder) 
      - [AnsiType](#ansitype)
    - [AnsiTreeView](#ansitreeview)
      - [Default theme](#default-theme)
  - [Print](#print)
- [FAQ](#faq)
- [Examples](#examples)
- [Contribution](#contribution)
- [Changelog](#changelog)


## Introduction

ANSI escape codes, also known as ANSI color codes or ANSI escape sequences, are a set of standardized sequences of 
characters used in computing to control text formatting, color, and other visual aspects of terminal output.

The ANSI escape codes consist of a special sequence of characters that begins with the escape character 
(ESC, ASCII code 27) followed by one or more control characters. 
These control characters can include commands to change the color or background of text, 
move the cursor to a specific location on the screen, erase part of the screen, and more.

For example, the ANSI escape code `"\e[31m"` changes the text color to red, while `"\e[42m"` changes the background color to green. 
The code `"\e[2J"` clears the entire screen, and `"\e[;H"` moves the cursor to the top-left corner of the screen.

ANSI escape codes are widely used in command-line interfaces, terminal emulators, and other text-based applications 
to provide a richer and more interactive user experience.

# AnsiX Features

## ANSI Support

With **AnsiX** you can check whether the terminal that is attached to your application supports ANSI escape codes 
and automatically disable all ANSI formatting to avoid malformed messages in your console.

### ANSI support detection

**AnsiX** will check if ANSI escape codes are supported in the attached terminal by using the 
default [Dart methods](https://api.flutter.dev/flutter/dart-io/Stdout/supportsAnsiEscapes.html) and taking an
extra step trying to further detect ANSI support in case default dart implementation fails.


### Ensure ANSI support

For example, when running an application in a terminal that doesn't support ANSI escape codes 
the formatted text looks like this:

```shell
> dart run example/styles.dart

[1mThis is a sample text with [bold] style[22m
[21mThis is a sample text with [boldUnderline] style[24m
[2mThis is a sample text with [dim] style[22m
[7mThis is a sample text with [inverse] style[27m
[3mThis is a sample text with [italic] style[23m
This is a sample text with [normal] style
[9mThis is a sample text with [strikethrough] style[29m
[4mThis is a sample text with [underline] style[24m
```

In the beginning of our application we can run `AnsiX.ensureSupportsAnsi();` to ensure that ANSI formatting is supported.

By default, if there's no ANSI support it will throw an error of type `AnsiNotSupported`.

We can override the default behaviour by setting the `setting` flag to true:

```dart
AnsiX.ensureSupportsAnsi(silent: true);
```

This will result to displaying the text with no ANSI formatting and ensure the quality and readability of your console messages:

```shell
> dart run example/styles.dart

This is a sample text with [bold] style
This is a sample text with [boldUnderline] style
This is a sample text with [dim] style
This is a sample text with [inverse] style
This is a sample text with [italic] style
This is a sample text with [normal] style
This is a sample text with [strikethrough] style
This is a sample text with [underline] style
```


### Force usage of ANSI escape codes

We can override the default AnsiX behaviour in order to enable ANSI formatting even if ANSI support detection failed, 
by using the `force` flag:

```dart
AnsiX.ensureSupportsAnsi(force: true);
```

***Use with caution, as it may lead to printing wrongly-formatted text.***


### Enable/Disable AnsiX

We can enable ANSI formatting simply by running the following:

```dart
AnsiX.enable();
AnsiX.disable();
```


## Theme

### Styles

ANSI style is a set of formatting codes that can be used to change the appearance of text in a terminal.

These codes include things like **bold**, _italic_, <ins>underline</ins>, and ~~strikethrough~~, as well as
control codes for things like cursor movement and clearing the screen.

ANSI style codes are supported by most terminal emulators
and are commonly used in command-line interfaces and text-based programs.

AnsiX supports the following text styles:

- bold
- bold underline
- dim
- inverse
- italic
- strikethrough
- underline

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/text-styles.png" target="_blank"><img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/text-styles.png" width="400" alt="text-styles"></a>


### Colors

ANSI colors are a set of standardized color codes that can be used
in text-based interfaces to add color and emphasis to text.

The ANSI color codes are typically supported by terminal emulators and command-line interfaces,
and can be used to change the foreground and background colors of text.

The ANSI color codes consist of a special sequence of characters that starts with the
escape character (ASCII code 27), followed by the characters '[', the color code, and the letter 'm'.

The color code can be a number between 0 and 255, and is used to specify
a specific color in the terminal's color palette.

Most terminals support 8 and 16 colors, as well as 256 (8-bit) colors.

#### ANSI Color sets

- [System colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/system.md)

  The 16 ANSI colors are a set of standardized colors used by early computer terminals,
  and are still commonly used today in various terminal applications.
  
  They consist of eight basic colors and their corresponding "bright" versions.


- [Extended colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/extended.md)

  Extended colors are a range of additional colors beyond the standard 16-color and 256-color palettes in the ANSI color space. 

  They are typically used in modern terminals that support true color or in applications that can generate 24-bit color codes. 

  The extended color range allows for a more extensive and diverse color palette, enabling users to choose from millions of possible color combinations. 

  Each color is represented by an RGB triplet or hexadecimal value, allowing for precise color selection. 

  Overall, the extended color range offers greater flexibility and creative freedom when it comes to designing and 
  displaying text and graphics in a terminal environment.


- [Greyscale colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/greyscale.md)

  Greyscale colors are a range of neutral colors that range from black to white, passing through shades of grey. 

  They are often used to provide contrast with other colors or to create a subdued, monochromatic look. 

  In the context of ANSI terminal colors, greyscale colors are represented by a series of shades ranging from black 
  to white, with a total of 24 different shades available.


- [All colors](https://github.com/nikosportolos/ansix/tree/main/docs/colors/all.md)

  Includes all 256 available terminal ANSI colors.


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/color-tables.png" target="_blank"><img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/color-tables.png" width="100%" alt="text-styles"></a>


### Text alignment

- AnsiTextAlignment.left

```shell
|This is a text with [left] alignment                        |
```


- AnsiTextAlignment.center

```shell
|           This is a text with [center] alignment           |
```


- AnsiTextAlignment.right

```shell
|                       This is a text with [right] alignment|
```


## Extensions


### String


- withStyle

```dart
 String withStyle(final AnsiStyle style)
```


- styled

```dart
String styled(
  final AnsiTextStyle style, [
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
]) 
```


- withForegroundColor

```dart
String withForegroundColor(final AnsiColor color)
```


- withBackgroundColor

```dart
String withBackgroundColor(final AnsiColor color)
```


- colored

```dart
String colored({
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
})
```


- coloredRgb

```dart
String coloredRgb({
  final Rgb? foreground,
  final Rgb? background,
})
```


#### Styles
- bold
- dim
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

- writeLines

Writes empty lines in buffer:


```dart
void writeLines(final int lines)
```


- writeSpaces

Writes spaces in buffer with optional background color:

```dart
void writeSpaces(
  final int length, [
  final AnsiColor backgroundColor = AnsiColor.none,
]) 
```


- writeColored

Writes a text in buffer with foreground color:

```dart
void writeColored(
  final String text,
  final AnsiColor color,
)
```


- coloredRgb

```dart
String coloredRgb({
  final Rgb? foreground,
  final Rgb? background,
})
```


- writeStyled

Writes a styled text in buffer with optional colors:

```dart
void writeStyled(
  final String text, {
  required final AnsiTextStyle style,
  final AnsiColor foregroundColor = AnsiColor.none,
  final AnsiColor backgroundColor = AnsiColor.none,
}) 
```


## Widgets


### AnsiText

```dart
AnsiText(
  'This is a demo message',
  foregroundColor: AnsiColor.white,
  backgroundColor: AnsiColor.deepSkyBlue4,
  fixedWidth: 40,
  alignment: AnsiTextAlignment.center,
  style: const AnsiTextStyle(
    bold: true,
  ),
);
```


### AnsiTextStyle

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

### AnsiOutlinedText

ANSI outlined text refers to text that is bordered or outlined using ANSI escape sequences in a command-line interface.

It can be customized with different colors and line styles to create visually appealing effects.

```dart
AnsiOutlinedText(
  super.text, {
  required final AnsiBorder border,
  super.alignment = AnsiTextAlignment.left,
  super.style = const AnsiTextStyle(),
  super.foregroundColor = AnsiColor.none,
  super.backgroundColor = AnsiColor.none,
  super.padding = AnsiPadding.none,
  final int? fixedWidth,
})
```

Check the [examples](https://github.com/nikosportolos/ansix/tree/main/example/outlined_text).

### AnsiTable

An ANSI table is a 2D table of data that is formatted with ANSI escape sequences to display borders
and optionally add colors or styles in certain cells or text.

The borders are drawn using ASCII or Unicode characters that simulate table lines and corners,
and the cells can be colored or styled with different foreground and background colors
to improve readability and visual appeal.

These tables are commonly used in command-line interfaces, log files, and other text-based applications
to present data in a tabular format that is easy to read and analyze.

```dart
AnsiTable({
  this.border = const AnsiBorder(),
  this.data = const <AnsiTableRow>[],
  final bool transparent = true,
})
```

- #### AnsiTable.fromList

Returns an `AnsiTable` build from the input list of data.

Arguments:

| Argument           | Description                                                                 |
|--------------------|-----------------------------------------------------------------------------|
| `data`             | Will use the input list of data to build an `AnsiTableColumn`.              |
| `fixedWidth`       | If set will use this value as default width for all table cells.            |
| `keepSameWidth`    | If set to true will find the max cell width and use it for the whole table. |
| `border`           | The `AnsiBorder` that will be used to draw the table with.                  |
| `defaultAlignment` | The default `AnsiTextAlignment` that will be used for all table cells.      |


```dart
factory AnsiTable.fromList(
  final List<Object?> data, {
  final int? fixedWidth,
  final AnsiBorder border = const AnsiBorder(),
  final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  final bool transparent = true,
})
```

- #### AnsiTable.fromMap
Returns an `AnsiTable` build from the input map of data.

Arguments:

| Argument           | Description                                                                           |
|--------------------|---------------------------------------------------------------------------------------|
| `data`             | Will use the keys of the map as headers and their values as data.                     |
| `fixedWidth`       | If set will use this value as default width for all table cells.                      |
| `keepSameWidth`    | If set to true will find the max cell width and use it for the whole table.           |
| `border`           | The `AnsiBorder` that will be used to draw the table with.                            |
| `defaultAlignment` | The default `AnsiTextAlignment` that will be used for all table cells.                |
| `orientation`      | The `AnsiOrientation` that will be used to draw the table.                            |
| `transparent`      | If set to true any external formatting will affect the AnsiTable. Defaults to *true*. |


```dart
factory AnsiTable.fromMap(
  final Map<Object, List<Object?>> data, {
  final int? fixedWidth,
  final bool keepSameWidth = false,
  final AnsiBorder border = const AnsiBorder(),
  final AnsiTextAlignment defaultAlignment = AnsiTextAlignment.left,
  final AnsiOrientation orientation = AnsiOrientation.vertical,
  final bool transparent = true,
})
```

### AnsiBorder

```dart
const AnsiBorder({
  this.type = AnsiBorderType.none,
  this.style = AnsiBorderStyle.none,
  this.color = AnsiColor.none,
})
```

#### AnsiBorderStyle

ANSI border styles are a set of characters and escape codes that can be used to draw borders 
and frames around text or other content in terminal-based applications.

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-styles.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-styles.png" width="300" alt="border-styles">
</a>

#### AnsiBorderType

- AnsiBorderType.all

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/all.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/all.png" width="400" alt="all-border-type">
</a>


- AnsiBorderType.header

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/header.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/header.png" width="400" alt="header-border-type">
</a>


- AnsiBorderType.headerFooter

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/header-footer.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/header-footer.png" width="400" alt="header-footer-border-type">
</a>


- AnsiBorderType.inside

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside.png" width="400" alt="inside-border-type">
</a>


- AnsiBorderType.insideHorizontal

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside-horizontal.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside-horizontal.png" width="400" alt="inside-horizontal-border-type">
</a>


- AnsiBorderType.insideVertical

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside-vertical.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/inside-vertical.png" width="400" alt="inside-vertical-border-type">
</a>


- AnsiBorderType.footer

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/footer.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/footer.png" width="400" alt="footer-border-type">
</a>


- AnsiBorderType.none

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/none.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/none.png" width="400" alt="none-border-type">
</a>


- AnsiBorderType.outside

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside.png" width="400" alt="outside-border-type">
</a>


- AnsiBorderType.outsideHorizontal

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside-horizontal.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside-horizontal.png" width="400" alt="outside-horizontal-border-type">
</a>


- AnsiBorderType.outsideVertical

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside-vertical.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/tables/outside-vertical.png" width="400" alt="outside-vertical-border-type">
</a>


### AnsiTreeView

A tree view is a way to represent data in a hierarchical structure, similar to the branches of a tree.

It shows the relationships between different elements or categories, where each element can have child elements.

The tree view provides a visual way to understand the structure and hierarchy of the data,
using indentation and/or graphical symbols to indicate levels and connections between the elements.


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/treeview/class.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/treeview/class.png" width="400" alt="class-treeview">
</a>

### Usage

You can print **any** type of object as a TreeView, just by using `AnsiX.printTreeView()`.

For example:

```dart
final User user = User(
  id: '123456789',
  name: 'John Doe',
  phone: '555-1234',
  email: 'john.doe@email.com',
);

AnsiX.printTreeView(
  user, 
  theme: AnsiTreeViewTheme.$default(),
);
```


See more [examples](https://github.com/nikosportolos/ansix/tree/main/example/treeview).


#### Default theme

```dart
factory AnsiTreeViewTheme.$default() {
  return AnsiTreeViewTheme(
    compact: true,
    sorted: false,
    showListItemIndex: true,
    anchorTheme: const AnsiTreeAnchorTheme(
      color: AnsiColor.deepSkyBlue5,
      style: AnsiBorderStyle.square,
    ),
    keyTheme: const AnsiTreeNodeKeyTheme(
      color: AnsiColor.white,
      textStyle: AnsiTextStyle(bold: true),
    ),
    valueTheme: const AnsiTreeNodeValueTheme(
      color: AnsiColor.grey69,
      textStyle: AnsiTextStyle(italic: true),
      wrapText: true,
      wrapLength: 120,
    ),
    headerTheme: AnsiTreeHeaderTheme(
      textTheme: AnsiTextTheme(
        style: const AnsiTextStyle(bold: true),
        padding: AnsiPadding.horizontal(2),
        foregroundColor: AnsiColor.white,
      ),
      border: const AnsiBorder(
        style: AnsiBorderStyle.square,
        type: AnsiBorderType.header,
        color: AnsiColor.deepSkyBlue5,
      ),
    ),
  );
}
```

### Print

The **AnsiX** class library provides static methods that allow us to print Ansi Widgets in the console fast and easy. 

> Note that the property **AnsiX.allowPrint** needs to be enabled in order to use the print methods.


- #### printStyled
Prints a string representation of the object to console with the given styles and ANSI colors.

```dart
static void printStyled(
  final Object? object, {
  required final AnsiTextStyle textStyle,
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
}) 
```

**Usage:**

```dart
import 'package:ansix/ansix.dart';

void main(){
  AnsiX.printStyled(
    'This is a text with bold style.',
    textStyle: const AnsiTextStyle(bold: true),
  );
}
```


- #### printJson
Prints an indented string representation of the JSON to console with the given styles and ANSI colors.

```dart
static void printJson(
  final Object? object, {
  final AnsiTextStyle textStyle = const AnsiTextStyle(),
  final AnsiColor foreground = AnsiColor.none,
  final AnsiColor background = AnsiColor.none,
  final int tabs = 2,
})
```

**Usage:**

```dart
import 'package:ansix/ansix.dart';

void main(){
  AnsiX.printJson(
    {
      'id': '123',
      'name': 'AnsiX'
    },
    textStyle: const AnsiTextStyle(bold: true),
  );
}
```


- #### printTreeView
Prints a tree-view representation of the given data to console.

```dart
static void printTreeView(
  final dynamic data, {
  final AnsiTreeViewTheme theme = const AnsiTreeViewTheme(),
})
```

**Usage:**

```dart
import 'package:ansix/ansix.dart';

void main() {
  AnsiX.printTreeView(
    <String, dynamic>{
      'map': <String, dynamic>{
        'id': 123,
        'username': 'AnsiX',
      },
      'list': <String>['This', 'is', 'AnsiX'],
    },
    theme:AnsiTreeViewTheme.$default(),
  );
}
```


### FAQ

If you have questions about **AnsiX**, make sure to check the
[FAQ](https://github.com/nikosportolos/ansix/tree/main/CONTRIBUTING.md) document.


## Examples

```dart
import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();

  // String extensions
  print('This is a bold text'.bold());
  print('This is a text with red foreground color'.red());

  // StringBuffer extensions
  print(StringBuffer()
    ..writeWithForegroundColor('Hello ', AnsiColor.blue)
    ..writeStyled(
      'AnsiX ',
      style: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.aquamarine2,
    )
    ..writeWithForegroundColor('!', AnsiColor.fuchsia)
    ..writeWithForegroundColor('!', AnsiColor.red1)
    ..writeWithForegroundColor('!', AnsiColor.darkOrange3)
    ..toString());
}
```


You can also check the [example](https://github.com/nikosportolos/ansix/tree/main/example) folder for more samples. 


## Contribution

Check the [contribution guide](https://github.com/nikosportolos/ansix/tree/main/CONTRIBUTING.md) 
if you want to help with **AnsiX**.


## Changelog

Check the [changelog](https://github.com/nikosportolos/ansix/tree/main/CHANGELOG.md)
to learn what's new in **AnsiX**.
