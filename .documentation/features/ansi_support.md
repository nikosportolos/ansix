# AnsiX Features


## ANSI Support

- [ANSI support detection](#ansi-support-detection)
- [Ensure ANSI support](#ensure-ansi-support)
- [Force usage of ANSI escape codes](#force-usage-of-ansi-escape-codes)
- [Enable/Disable AnsiX](#enabledisable-ansix)


---


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
> dart run example/border_types.dart

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
> dart run example/border_types.dart

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

We can enable or disable ANSI formatting simply by running:

```dart
AnsiX.enable();
AnsiX.disable();
```

If ANSI formatting is disabled, no styles nor colors will be applied and
all output printed by AnsiX will be unformatted.
