# AnsiX Features


## Widgets

- [AnsiText](#ansitext)
    - [AnsiTextStyle](#ansitextstyle)
- [AnsiOutlinedText](#ansioutlinedtext)
- [AnsiTable](#ansitable)
    - [AnsiBorder](#ansiborder)
    - [AnsiType](#ansitype)
- [AnsiTreeView](#ansitreeview)
    - [Default theme](#default-theme)


---


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
  final bool wrapText = false,
  final WrapOptions wrapOptions = const WrapOptions(),
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

| Argument          | Description                                                                                                                                                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `data`            | Will use the input list of data to build an `AnsiTableColumn`.                                                                                             |
| `fixedWidth`      | If set will use this value as default width for all table cells.                                                                                           |
| `keepSameWidth`   | If set to true will find the max cell width and use it for the whole table.                                                                                |
| `border`          | The `AnsiBorder` that will be used to draw the table with.                                                                                                 |
| `headerTextTheme` | The default `AnsiTextTheme` that will be used for styling the table header cells that are not of type `AnsiText`. If not set will use the [cellTextStyle]. |
| `cellTextTheme`   | The default `AnsiTextTheme` that will be used for styling all table cells that are not of type `AnsiText`.                                                 |
| `footerTextTheme` | The default `AnsiTextTheme` that will be used for styling the table footer cells that are not of type `AnsiText`. If not set will use the [cellTextStyle]. |


```dart
factory AnsiTable.fromList(
  final List<Object?> data, {
  final int? fixedWidth,
  final AnsiBorder border = const AnsiBorder(),
  final AnsiTextTheme? headerTextTheme,
  final AnsiTextTheme cellTextTheme = const AnsiTextTheme(),
  final AnsiTextTheme? footerTextTheme,
  final bool transparent = true,
})
```

- #### AnsiTable.fromMap
Returns an `AnsiTable` build from the input map of data.

Arguments:

| Argument          | Description                                                                                                                                                |
|-------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `data`            | Will use the keys of the map as headers and their values as data.                                                                                          |
| `fixedWidth`      | If set will use this value as default width for all table cells.                                                                                           |
| `keepSameWidth`   | If set to true will find the max cell width and use it for the whole table.                                                                                |
| `border`          | The `AnsiBorder` that will be used to draw the table with.                                                                                                 |
| `headerTextTheme` | The default `AnsiTextTheme` that will be used for styling the table header cells that are not of type `AnsiText`. If not set will use the [cellTextStyle]. |
| `cellTextTheme`   | The default `AnsiTextTheme` that will be used for styling all table cells that are not of type `AnsiText`.                                                 |
| `footerTextTheme` | The default `AnsiTextTheme` that will be used for styling the table footer cells that are not of type `AnsiText`. If not set will use the [cellTextStyle]. |
| `orientation`     | The `AnsiOrientation` that will be used to draw the table.                                                                                                 |
| `transparent`     | If set to true any external formatting will affect the AnsiTable. Defaults to *true*.                                                                      |


```dart
factory AnsiTable.fromMap(
  final Map<Object, List<Object?>> data, {
  final int? fixedWidth,
  final bool keepSameWidth = false,
  final AnsiBorder border = const AnsiBorder(),
  final AnsiTextTheme? headerTextTheme,
  final AnsiTextTheme cellTextTheme = const AnsiTextTheme(),
  final AnsiTextTheme? footerTextTheme,
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
      textStyle: AnsiTextStyle(italic: true),
      alignment: AnsiTextAlignment.center,
      color: AnsiColor.grey69,
      wrapText: true,
      wrapOptions: WrapOptions(lineLength: 120),
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
