# AnsiX Features


## Print


The **AnsiX** class library provides static methods that allow us to 
print Ansi Widgets in the console fast and easy.

If ANSI formatting is not supported or disabled manually, 
then all output will be printed unformatted.

> Note that the property **AnsiX.allowPrint** needs to be enabled in order to use the print methods.


### Table of Contents

- [print](#print)
- [printStyled](#printStyled)
- [printJson](#printJson)
- [printTreeView](#printTreeView)
- [printDataGrid](#printDataGrid)

---


- #### print

Prints a string representation of the object to console 
with the given styles and ANSI colors.

```dart
static void print(final Object? object) 
```

**Usage:**

```dart
import 'package:ansix/ansix.dart';

void main(){
  AnsiX.print(
    'This is a text with bold style.'.bold(),
  );
}
```




- #### printStyled

Prints a string representation of the object to console 
with the given styles and ANSI colors.

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

Prints an indented string representation of the JSON to console 
with the given styles and ANSI colors.

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



- #### printDataGrid

Prints a grid representation of the given data to console.

```dart
static void printDataGrid(
  final List<List<Object?>> data, {
  required final AnsiGridType type,
  final AnsiGridTheme theme = const AnsiGridTheme(),
})
```

**Usage:**

```dart
import 'package:ansix/ansix.dart';

void main() {
  AnsiX.printDataGrid(
    <List<Object?>>[
      <Object?>[1, 2, 3, 4, 5],
      <Object?>[2, 5, 1, 3, 5],
      <Object?>[5, 2, 3, 5, 2]
    ],
    type: AnsiGridType.fromColumns,
  );
}
```
