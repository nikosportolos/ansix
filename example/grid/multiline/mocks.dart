import 'package:ansix/ansix.dart';

AnsiGridTheme horizontalTheme = AnsiGridTheme(
  border: const AnsiBorder(
    style: AnsiBorderStyle.rounded,
    type: AnsiBorderType.all,
  ),
  wrapText: true,
  wrapOptions: const WrapOptions(
    lineBreak: false,
    splitWords: false,
  ),
  orientation: AnsiOrientation.horizontal,
  // fixedCellWidth: 12,
  keepSameWidth: false,
  overrideTheme: true,
  headerTextTheme: AnsiTextTheme(
    foregroundColor: AnsiColor.white,
    style: const AnsiTextStyle(bold: true),
    backgroundColor: AnsiColor.deepSkyBlue7,
    alignment: AnsiTextAlignment.center,
    padding: AnsiPadding.horizontal(2),
    // fixedWidth: 8,
  ),
  cellTextTheme: AnsiTextTheme(
    foregroundColor: AnsiColor.cadetBlue,
    alignment: AnsiTextAlignment.center,
    padding: AnsiPadding.horizontal(1),
    // fixedWidth: 8,
  ),
  footerTextTheme: AnsiTextTheme(
    foregroundColor: AnsiColor.grey0,
    style: const AnsiTextStyle(italic: true),
    alignment: AnsiTextAlignment.center,
    backgroundColor: AnsiColor.deepSkyBlue5,
    padding: AnsiPadding.horizontal(1),
  ),
);

final AnsiGridTheme verticalTheme = horizontalTheme.copyWith.orientation(AnsiOrientation.vertical);

const List<Movie> movies = <Movie>[
  Movie(title: 'The Shawshank Redemption', releaseYear: 1994, rate: 9.3),
  Movie(title: 'The Godfather', releaseYear: 1972, rate: 9.2),
  Movie(title: 'The Dark Knight', releaseYear: 2008, rate: 9.0),
  Movie(title: 'The Godfather Part II', releaseYear: 1974, rate: 9.0),
  Movie(title: '12 Angry Men', releaseYear: 1957, rate: 9.0),
  Movie(title: 'Schindler\'s List', releaseYear: 1993, rate: 9.0),
  Movie(title: 'The Lord of the Rings: The Return of the King', releaseYear: 2003, rate: 9.0),
  Movie(title: 'Pulp Fiction', releaseYear: 1994, rate: 8.9),
  Movie(title: 'The Lord of the Rings: The Fellowship of the Ring', releaseYear: 2001, rate: 8.8),
  Movie(title: 'The Good, the Bad and the Ugly', releaseYear: 1966, rate: 8.8),
];

class Movie {
  /// Shorthand constructor
  const Movie({
    required this.title,
    required this.releaseYear,
    required this.rate,
  });

  final String title;
  final int releaseYear;
  final double rate;
}
