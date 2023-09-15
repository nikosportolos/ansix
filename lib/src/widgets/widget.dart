/// Base [AnsiWidget] interface class.
abstract class AnsiWidget {
  const AnsiWidget();

  String get formattedText;

  @override
  String toString() => formattedText;
}
