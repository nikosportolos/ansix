// AUTO GENERATED - DO NOT MODIFY
// ignore_for_file: type=lint
// coverage:ignore-file

part of 'article.dart';

class _$ArticleImpl extends Article {
  _$ArticleImpl({
    required this.id,
    required this.title,
    required this.description,
    required this.body,
    required this.postedOn,
    required this.author,
    required this.tags,
    required this.notes,
  }) : super.ctor();

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
  final List<String> tags;

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
      tags,
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

abstract interface class _ArticleCopyWithProxy {
  Article id(int newValue);

  Article title(String newValue);

  Article description(String newValue);

  Article body(String newValue);

  Article postedOn(DateTime newValue);

  $UserCopyWithProxyChain<Article> get author;

  Article tags(List<String> newValue);

  Article notes(String newValue);

  Article call({
    final int? id,
    final String? title,
    final String? description,
    final String? body,
    final DateTime? postedOn,
    final User? author,
    final List<String>? tags,
    final String? notes,
  });
}

class _ArticleCopyWithProxyImpl implements _ArticleCopyWithProxy {
  _ArticleCopyWithProxyImpl(this._value);

  final Article _value;

  @pragma('vm:prefer-inline')
  @override
  Article id(int newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  Article title(String newValue) => this(title: newValue);

  @pragma('vm:prefer-inline')
  @override
  Article description(String newValue) => this(description: newValue);

  @pragma('vm:prefer-inline')
  @override
  Article body(String newValue) => this(body: newValue);

  @pragma('vm:prefer-inline')
  @override
  Article postedOn(DateTime newValue) => this(postedOn: newValue);

  @pragma('vm:prefer-inline')
  @override
  $UserCopyWithProxyChain<Article> get author =>
      $UserCopyWithProxyChain<Article>(_value.author, (User update) => this(author: update));

  @pragma('vm:prefer-inline')
  @override
  Article tags(List<String> newValue) => this(tags: newValue);

  @pragma('vm:prefer-inline')
  @override
  Article notes(String newValue) => this(notes: newValue);

  @pragma('vm:prefer-inline')
  @override
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

sealed class $ArticleCopyWithProxyChain<$Result> {
  factory $ArticleCopyWithProxyChain(final Article value, final $Result Function(Article update) chain) =
      _ArticleCopyWithProxyChainImpl<$Result>;

  $Result id(int newValue);

  $Result title(String newValue);

  $Result description(String newValue);

  $Result body(String newValue);

  $Result postedOn(DateTime newValue);

  $Result author(User newValue);

  $Result tags(List<String> newValue);

  $Result notes(String newValue);

  $Result call({
    final int? id,
    final String? title,
    final String? description,
    final String? body,
    final DateTime? postedOn,
    final User? author,
    final List<String>? tags,
    final String? notes,
  });
}

class _ArticleCopyWithProxyChainImpl<$Result> implements $ArticleCopyWithProxyChain<$Result> {
  _ArticleCopyWithProxyChainImpl(this._value, this._chain);

  final Article _value;
  final $Result Function(Article update) _chain;

  @pragma('vm:prefer-inline')
  @override
  $Result id(int newValue) => this(id: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result title(String newValue) => this(title: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result description(String newValue) => this(description: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result body(String newValue) => this(body: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result postedOn(DateTime newValue) => this(postedOn: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result author(User newValue) => this(author: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result tags(List<String> newValue) => this(tags: newValue);

  @pragma('vm:prefer-inline')
  @override
  $Result notes(String newValue) => this(notes: newValue);

  @pragma('vm:prefer-inline')
  @override
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
  _ArticleCopyWithProxy get copyWith => _ArticleCopyWithProxyImpl(this);
}
