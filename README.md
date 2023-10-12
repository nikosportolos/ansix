# AnsiX

[![Pub Version](https://img.shields.io/pub/v/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)
[![Pub Publisher](https://img.shields.io/pub/publisher/ansix)](https://pub.dev/publishers/nikosportolos.com/packages)
[![Pub Points](https://img.shields.io/pub/points/ansix?color=blue&logo=dart)](https://pub.dev/packages/ansix)

[![Build](https://github.com/nikosportolos/ansix/actions/workflows/build.yml/badge.svg)](https://github.com/nikosportolos/ansix/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/nikosportolos/ansix/branch/main/graph/badge.svg?token=RBU7C1V1UO)](https://codecov.io/gh/nikosportolos/ansix)
[![Language](https://img.shields.io/badge/language-Dart-blue.svg)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/AnsiX.gif" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/AnsiX.gif" width="500" alt="ansix">
</a>

AnsiX is a powerful and easy-to-use library that provides tools and extensions for adding ANSI color and styling support to your Dart & Flutter applications. 

You can easily create colorful and visually appealing output for your command-line interfaces, 
including bold, italic, underline, and strikethrough text, as well as foreground and background colors in a
wide range of ANSI-compatible terminals.

Whether you're building a CLI tool, a dart server, or a Flutter application, 
AnsiX makes it easy to add ANSI styling to your output with minimal effort and maximum flexibility. 

 

## Table of contents

- [Introduction](#introduction)
- [AnsiX Features](#ansix-features)
  - [ANSI Support](./.documentation/features/ansi_support.md#ansi-support)
    - [ANSI support detection](./.documentation/features/ansi_support.md#ansi-support-detection)
    - [Ensure ANSI support](./.documentation/features/ansi_support.md#ensure-ansi-support)
    - [Force usage of ANSI escape codes](./.documentation/features/ansi_support.md#force-usage-of-ansi-escape-codes)
    - [Enable/Disable AnsiX](./.documentation/features/ansi_support.md#enabledisable-ansix)
  - [Theme](./.documentation/features/theme.md#theme)
    - [Styles](./.documentation/features/theme.md#styles)
    - [Colors](./.documentation/features/theme.md#colors)
      - [Color sets](./.documentation/features/theme.md#ansi-color-sets)
    - [Text alignment](./.documentation/features/theme.md#text-alignment)
  - [Extensions](./.documentation/features/extensions.md#extensions)
    - [String](./.documentation/features/extensions.md#string) 
    - [StringBuffer](./.documentation/features/extensions.md#stringbuffer) 
  - [Widgets](./.documentation/features/widgets.md#widgets)
    - [AnsiText](./.documentation/features/widgets.md#ansitext) 
      - [AnsiTextStyle](./.documentation/features/widgets.md#ansitextstyle)
    - [AnsiOutlinedText](./.documentation/features/widgets.md#ansioutlinedtext)
    - [AnsiGrid](./.documentation/features/widgets.md#ansigrid) 
      - [AnsiBorder](./.documentation/features/widgets.md#ansiborder) 
      - [AnsiBorderStyle](./.documentation/features/widgets.md#ansiborderstyle)
      - [AnsiBorderType](./.documentation/features/widgets.md#ansibordertype)
    - [AnsiTreeView](./.documentation/features/widgets.md#ansitreeview)
      - [Usage](./.documentation/features/widgets.md#usage)
      - [Default theme](./.documentation/features/widgets.md#default-theme)
  - [Print](./.documentation/features/print.md#print)
    - [printStyled](./.documentation/features/print.md#printStyled)
    - [printJson](./.documentation/features/print.md#printJson)
    - [printTreeView](./.documentation/features/print.md#printTreeView)
    - [printDataGrid](./.documentation/features/print.md#printDataGrid)
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

  final StringBuffer buffer = StringBuffer()
    ..writeWithForegroundColor('Hello ', AnsiColor.blue)
    ..writeStyled(
      'AnsiX ',
      textStyle: const AnsiTextStyle(bold: true),
      foregroundColor: AnsiColor.aquamarine2,
    )
    ..writeWithForegroundColor('!', AnsiColor.red)
    ..writeWithForegroundColor('!', AnsiColor.green)
    ..writeWithForegroundColor('!', AnsiColor.blue);

  // StringBuffer extensions
  print(buffer);
}
```

- **Print data grid**

```dart
import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();

  final List<List<Object?>> rows = <List<Object?>>[
    <Object?>['#', 'Title', 'Release Year', 'IMDb Rate'],
    ...movies.mapIndexed((int i, Movie m) {
      return <Object>[i, m.title, m.releaseYear, m.rate];
    }).toList(growable: false),
    <Object?>['Average', '', '', movies.map((Movie m) => m.rate).toList(growable: false).average],
  ];
 
  final AnsiGrid verticalGrid = AnsiGrid.fromRows(rows, theme: verticalTheme);
  
  print(verticalGrid);
}
```

- **Vertical grid**

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/vertical-grid-example.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/vertical-grid-example.png" width="600" alt="vertical-grid-example">
</a>


- **Horizontal grid**

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/horizontal-grid-example.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/horizontal-grid-example.png" width="750" alt="horizontal-grid-example">
</a>


You can also check the [example](https://github.com/nikosportolos/ansix/tree/main/example) folder for more samples.


- **Print tree view**

```dart
import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();

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
}
```


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/treeview/class.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/treeview/class.png" width="400" alt="class-treeview">
</a>



- **Print json/map**

```dart
import 'package:ansix/ansix.dart';

void main() {
  // Ensure that the attached terminal supports ANSI formatting
  AnsiX.ensureSupportsAnsi();
  
  final Map<String, dynamic> json = <String, dynamic>{
    'field1': 'value',
    'field2': 3.0,
    'field3': true,
  };

  print('Json'.underline().colored(background: AnsiColor.darkSeaGreen, foreground: AnsiColor.black));
  AnsiX.printJson(json, foreground: AnsiColor.cadetBlue);
}
```


<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/json-example.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/json-example.png" width="275" alt="json-example">
</a>


## Contribution

Check the [contribution guide](https://github.com/nikosportolos/ansix/tree/main/CONTRIBUTING.md) 
if you want to help with **AnsiX**.


## Changelog

Check the [changelog](https://github.com/nikosportolos/ansix/tree/main/CHANGELOG.md)
to learn what's new in **AnsiX**.
