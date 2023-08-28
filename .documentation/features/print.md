# AnsiX Features


## Print


The **AnsiX** class library provides static methods that allow us to print Ansi Widgets in the console fast and easy.

> Note that the property **AnsiX.allowPrint** needs to be enabled in order to use the print methods.


- [printStyled](#printStyled)
- [printJson](#printJson)
- [printTreeView](#printTreeView)

---


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
