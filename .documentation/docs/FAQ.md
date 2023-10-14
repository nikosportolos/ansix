## AnsiX FAQs


- [Extensions](#extensions)
  - What's the difference between the .colored and .coloredRgb string extensions?
- [AnsiColor](#ansicolor)
  - What's the difference between 24-bit and the 256 colors in terminals?
- [Flutter](#flutter)
  - [Dependency conflicts](#dependency-conflicts)
    - The dependencies of AnsiX conflict with _flutter_test_ or _flutter_localization_ SDKs.
  - [Web support](#web-support)
    - The text in my browser's console has no or invalid ANSI colors and styles.

### Extensions

- **What's the difference between the `.colored` and `.coloredRgb` string extensions?**

  The `.colored` extension uses the 256-terminal color value of the given AnsiColor, while the `.coloredRgb` 
extension uses the 24-bit terminal (RGB) color.

  Read more [here](#whats-the-difference-between-the-colored-and-coloredrgb-string-extensions).


### AnsiColor

- **What's the difference between 24-bit and the 256 colors in terminals?**

  The main difference between 24-bit terminal colors and the 256 colors in ANSI terminals
is the size of the color palette and the level of color precision.

  In the 256-color mode, ANSI terminals provide a fixed palette of 256 colors.
Each color is assigned a specific index value from 0 to 255, and you can select and use these colors by
specifying the corresponding index in the ANSI escape codes.
This color mode offers a limited range of colors and is based on a pre-defined set of color values.
Although it provides a decent variety of colors, the selection is limited compared to the millions of
colors available in the 24-bit color space.

  On the other hand, 24-bit terminal colors, also known as true color or RGB color mode, allow for a
significantly larger color palette. With 24-bit color support, you can specify any color using the RGB color model.
Each color channel (red, green, blue) can have a value between 0 and 255, resulting in a total of 16,777,216
possible colors. This provides a much broader range of colors and allows for more precise color selection,
offering a more visually rich and accurate color representation.

  In summary, the main difference is that 256-color mode in ANSI terminals provides a fixed palette of 256 colors,
while 24-bit color mode (true color) allows for a much larger and more flexible color palette
based on the RGB color model, resulting in millions of possible colors.



### Flutter

#### Dependency conflicts

- **The dependencies of **AnsiX** conflict with _flutter_test_ or _flutter_localization_ SDKs**

  <a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/pinned_version.webp" target="_blank">
    <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/pinned_version.webp" width="500" alt="pinned_version">
  </a>

  This happens because of specific packages that are pinned by the Flutter SDK to specific versions.

  > Read more on Flutter pinned packages: https://github.com/dart-lang/sdk/wiki/Flutter-Pinned-Packages

  You can try updating the Flutter SDKs by running the command:

  ```shell
  flutter update-packages --force-upgrade
  ```

  or override the conflicted dependency by adding in your pubspec.yaml:

  ```yaml
  dependency_overrides:
    meta: 1.9.1
  ```


#### Web support

- **The text in my browser's console has no or invalid ANSI colors and styles.**

  <a href="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/web-example-faq.webp" target="_blank">
    <img src="https://raw.githubusercontent.com/nikosportolos/ansix/main/assets/images/web-example-faq.webp" width="720" alt="web-example-faq">
  </a>

  **AnsiX** supports ANSI formatting only on **Chrome**, **Opera** and **Edge**. 
  On other browsers all text will be printed unformatted.

  If you're using a supported web browser,
  just make sure you have set the `ColorFormat` to `RGB`:

  ```dart
  AnsiX.colorFormat = ColorFormat.rgb;
  ```

  Read more on [web support](../features/web_support.md#web-support).


---

If you didn't find an answer here, make sure you check the repository's [issues](https://github.com/nikosportolos/ansix/issues)
or feel free to create a new one.

