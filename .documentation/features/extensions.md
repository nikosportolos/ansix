# AnsiX Features


## Extensions

- [String](#string) 
- [StringBuffer](#stringbuffer) 


---


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
