import 'package:data_class_plugin/data_class_plugin.dart';

import 'user.dart';

part 'article.gen.dart';

@DataClass(toJson: true)
abstract class Article {
  Article.ctor();

  /// Default constructor
  factory Article({
    required int id,
    required String title,
    required String description,
    required String body,
    required DateTime postedOn,
    required User author,
    required List<String> tags,
    required String notes,
  }) = _$ArticleImpl;

  int get id;

  String get title;

  String get description;

  String get body;

  DateTime get postedOn;

  User get author;

  List<String> get tags;

  String get notes;

  /// Converts [Article] to a [Map] json
  Map<String, dynamic> toJson();
}
