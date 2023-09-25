# AnsiX Features


## Widgets

- [AnsiText](#ansitext)
    - [AnsiTextStyle](#ansitextstyle)
- [AnsiOutlinedText](#ansioutlinedtext)
- [AnsiTable](#ansitable)
- [AnsiGrid](#ansigrid)
    - [AnsiBorder](#ansiborder)
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

### AnsiPadding


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

#### Examples

- Outlined text with various border styles

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/outlined-text-example-1.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/outlined-text-example-1.png" width="600" alt="outlined-text-example-1">
</a>

- Outlined text with wrapping

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/outlined-text-example-2.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/outlined-text-example-2.png" width="600" alt="outlined-text-example-2">
</a>


Check the [examples](https://github.com/nikosportolos/ansix/tree/main/example/outlined_text) folder for more.


### AnsiGrid

An ANSI Grid is a 2D table of data that is formatted with ANSI escape sequences to display borders
and optionally add colors or styles in certain cells or text.

The borders are drawn using ASCII or Unicode characters that simulate table lines and corners,
and the cells can be colored or styled with different foreground and background colors
to improve readability and visual appeal.

Grids are commonly used in command-line interfaces, log files, and other text-based applications
to present data in a tabular format that is easy to read and analyze.

> The difference between the **AnsiGrid** and the deprecated **AnsiTable** is that 
> each cell of an AnsiGrid can have multiple lines and auto text-wrapping is supported.

- [data]

  A list of columns that will be used as data of the **AnsiGrid**.

- [theme]

  The **AnsiGridTheme** that will be used to draw the **AnsiGrid**.


```dart
AnsiGrid(
  final List<List<Object?>> data, {
  this.theme = const AnsiGridTheme(),
})
```

- **Vertical grid**

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/vertical-grid-example.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/vertical-grid-example.png" width="600" alt="vertical-grid-example">
</a>


- **Horizontal grid**

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/horizontal-grid-example.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/grid/horizontal-grid-example.png" width="750" alt="horizontal-grid-example">
</a>


### AnsiGridTheme

A collection of styling properties, borders and colors, that will be used to style an **AnsiGrid**.

```dart
const factory AnsiGridTheme({
  AnsiBorder border,
  AnsiTextTheme? headerTextTheme,
  AnsiTextTheme cellTextTheme,
  AnsiTextTheme? footerTextTheme,
  int? fixedCellWidth,
  bool keepSameWidth,
  AnsiOrientation orientation,
  bool transparent,
  bool overrideTheme,
  bool wrapText,
  WrapOptions wrapOptions,
})
```


- [border]

  The [AnsiBorder](#ansiborder) that will be used to draw the AnsiGrid with.

- [headerTextTheme]

  The default AnsiTextTheme that will be used for styling the grid header cells
  that are not of type AnsiText.

  If **overrideTheme** is set to true and the cell content is of type AnsiText then this
  text theme will be overridden by the cell's original theme.

  If not set, the cellTextStyle will be used instead.

  Defaults to *null*.

- [cellTextTheme]
  
  The default **AnsiTextTheme** that will be used for styling all grid cells that are not of type AnsiText.

- [footerTextTheme]

  The default **AnsiTextTheme** that will be used for styling the grid footer cells
  that are not of type **AnsiText**.

  If **overrideTheme** is set to true and the cell content is of type AnsiText then this
  text theme will be overridden by the cell's original theme.

  If not set, the **cellTextStyle** will be used instead.

  Defaults to *null*.

- [fixedCellWidth]

  If set will use this value as default width for all grid cells.

  Defaults to *null*.

- [keepSameWidth]

  If set to true will find the max cell width and use it for the whole **AnsiGrid**.

  Defaults to *false*.

- [orientation]

  The [AnsiOrientation] that will be used to draw the **AnsiGrid**.

  Defaults to *false*.

- [transparent]

  If set to true any external formatting will affect the **AnsiGrid**.

  Defaults to *false*.

- [overrideTheme]

  Enabling this will prevent **AnsiGrid** from using the given **AnsiTextTheme** to the cells
  with custom styles and colors and allow them to keep their original styling.

  Defaults to *false*.

- [wrapText]

  If set to true all values that exceed the wrapLength will be wrapped.

  Defaults to *false*.

- [wrapOptions]

  Defines how the text value of the tree node should be wrapped, if **wrapText** is enabled.

  If **fixedWidth** is not null, will be used as the maximum length for each line.

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

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/all.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/all.png" width="400" alt="all-border-type">
</a>


- AnsiBorderType.inside

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside.png" width="400" alt="inside-border-type">
</a>


- AnsiBorderType.insideHorizontal

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside-horizontal.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside-horizontal.png" width="400" alt="inside-horizontal-border-type">
</a>


- AnsiBorderType.insideVertical

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside-vertical.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/inside-vertical.png" width="400" alt="inside-vertical-border-type">
</a>


- AnsiBorderType.none

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/none.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/none.png" width="400" alt="none-border-type">
</a>


- AnsiBorderType.outside

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside.png" width="400" alt="outside-border-type">
</a>


- AnsiBorderType.outsideHorizontal

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside-horizontal.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside-horizontal.png" width="400" alt="outside-horizontal-border-type">
</a>


- AnsiBorderType.outsideVertical

<a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside-vertical.png" target="_blank">
  <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/border-types/outside-vertical.png" width="400" alt="outside-vertical-border-type">
</a>


### AnsiTreeView

A tree view is a way to represent data in a hierarchical structure, similar to the branches of a tree.

It shows the relationships between different elements or categories, where each element can have child elements.

The tree view provides a visual way to understand the structure and hierarchy of the data,
using indentation and/or graphical symbols to indicate levels and connections between the elements.

```dart
AnsiTreeView(
  final dynamic data, {
  this.theme = const AnsiTreeViewTheme(),
})
```

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

Or just use the TreeView object as a string:

```dart
print(
  AnsiTreeView(
    user,
    theme: AnsiTreeViewTheme.$default(),
  ),
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
    alignment: AnsiTextAlignment.center,
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
