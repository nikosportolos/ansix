// AUTO GENERATED - DO NOT MODIFY

// ignore_for_file: library_private_types_in_public_api, unused_element, unused_field

part of 'article.dart';

class _$ArticleImpl extends Article {
  _$ArticleImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.body,
    required this.postedOn,
    required this.author,
    required List<String> tags,
    required this.notes,
  })  : _tags = tags,
        super.ctor();

  @override
  final int id;

  @override
  final String title;

  @override
  final String description;

  @override
  final String body;

  @override
  final DateTime postedOn;

  @override
  final User author;

  @override
  List<String> get tags => List<String>.unmodifiable(_tags);
  final List<String> _tags;

  @override
  final String notes;

  @override
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'description': description,
      'body': body,
      'postedOn': jsonConverterRegistrant.find(DateTime).toJson(postedOn),
      'author': author.toJson(),
      'tags': tags,
      'notes': notes,
    };
  }

  @override
  bool operator ==(Object? other) {
    return identical(this, other) ||
        other is Article &&
            runtimeType == other.runtimeType &&
            id == other.id &&
            title == other.title &&
            description == other.description &&
            body == other.body &&
            postedOn == other.postedOn &&
            author == other.author &&
            deepEquality(tags, other.tags) &&
            notes == other.notes;
  }

  @override
  int get hashCode {
    return Object.hashAll(<Object?>[
      runtimeType,
      id,
      title,
      description,
      body,
      postedOn,
      author,
      notes,
    ]);
  }

  @override
  String toString() {
    String toStringOutput = 'Article{<optimized out>}';
    assert(() {
      toStringOutput =
          'Article@<$hexIdentity>{id: $id, title: $title, description: $description, body: $body, postedOn: $postedOn, author: $author, tags: $tags, notes: $notes}';
      return true;
    }());
    return toStringOutput;
  }

  @override
  Type get runtimeType => Article;
}

class _$ArticleCopyWithProxy {
  _$ArticleCopyWithProxy(this._value);

  final Article _value;

  @pragma('vm:prefer-inline')
  Article id(int newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  Article title(String newValue) => this(title: newValue);

  @pragma('vm:prefer-inline')
  Article description(String newValue) => this(description: newValue);

  @pragma('vm:prefer-inline')
  Article body(String newValue) => this(body: newValue);

  @pragma('vm:prefer-inline')
  Article postedOn(DateTime newValue) => this(postedOn: newValue);
  @pragma('vm:prefer-inline')
  $UserCopyWithProxyChain<Article> get author =>
      $UserCopyWithProxyChain<Article>(
          _value.author, (User update) => this(author: update));

  @pragma('vm:prefer-inline')
  Article tags(List<String> newValue) => this(tags: newValue);

  @pragma('vm:prefer-inline')
  Article notes(String newValue) => this(notes: newValue);

  @pragma('vm:prefer-inline')
  Article call({
    final int? id,
    final String? title,
    final String? description,
    final String? body,
    final DateTime? postedOn,
    final User? author,
    final List<String>? tags,
    final String? notes,
  }) {
    return _$ArticleImpl(
      id: id ?? _value.id,
      title: title ?? _value.title,
      description: description ?? _value.description,
      body: body ?? _value.body,
      postedOn: postedOn ?? _value.postedOn,
      author: author ?? _value.author,
      tags: tags ?? _value.tags,
      notes: notes ?? _value.notes,
    );
  }
}

class $ArticleCopyWithProxyChain<$Result> {
  $ArticleCopyWithProxyChain(this._value, this._chain);

  final Article _value;
  final $Result Function(Article update) _chain;

  @pragma('vm:prefer-inline')
  $Result id(int newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  $Result title(String newValue) => this(title: newValue);

  @pragma('vm:prefer-inline')
  $Result description(String newValue) => this(description: newValue);

  @pragma('vm:prefer-inline')
  $Result body(String newValue) => this(body: newValue);

  @pragma('vm:prefer-inline')
  $Result postedOn(DateTime newValue) => this(postedOn: newValue);

  @pragma('vm:prefer-inline')
  $Result author(User newValue) => this(author: newValue);

  @pragma('vm:prefer-inline')
  $Result tags(List<String> newValue) => this(tags: newValue);

  @pragma('vm:prefer-inline')
  $Result notes(String newValue) => this(notes: newValue);

  @pragma('vm:prefer-inline')
  $Result call({
    final int? id,
    final String? title,
    final String? description,
    final String? body,
    final DateTime? postedOn,
    final User? author,
    final List<String>? tags,
    final String? notes,
  }) {
    return _chain(_$ArticleImpl(
      id: id ?? _value.id,
      title: title ?? _value.title,
      description: description ?? _value.description,
      body: body ?? _value.body,
      postedOn: postedOn ?? _value.postedOn,
      author: author ?? _value.author,
      tags: tags ?? _value.tags,
      notes: notes ?? _value.notes,
    ));
  }
}

extension $ArticleExtension on Article {
  _$ArticleCopyWithProxy get copyWith => _$ArticleCopyWithProxy(this);
}
