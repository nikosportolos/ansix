# AnsiX Features


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
