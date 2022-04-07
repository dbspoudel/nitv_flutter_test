// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _news.fromJson(json);
}

/// @nodoc
class _$NewsTearOff {
  const _$NewsTearOff();

  _news call(
      {@JsonKey(name: 'author') required String authorName,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'urlToImage') required String imageUrl,
      @JsonKey(name: 'publishedAt') required String publishedAt,
      @JsonKey(name: 'content') required String content}) {
    return _news(
      authorName: authorName,
      title: title,
      description: description,
      url: url,
      imageUrl: imageUrl,
      publishedAt: publishedAt,
      content: content,
    );
  }

  News fromJson(Map<String, Object?> json) {
    return News.fromJson(json);
  }
}

/// @nodoc
const $News = _$NewsTearOff();

/// @nodoc
mixin _$News {
  @JsonKey(name: 'author')
  String get authorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'url')
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'urlToImage')
  String get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  String get publishedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'author') String authorName,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'urlToImage') String imageUrl,
      @JsonKey(name: 'publishedAt') String publishedAt,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res> implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  final News _value;
  // ignore: unused_field
  final $Res Function(News) _then;

  @override
  $Res call({
    Object? authorName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$newsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$newsCopyWith(_news value, $Res Function(_news) then) =
      __$newsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'author') String authorName,
      @JsonKey(name: 'title') String title,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'url') String url,
      @JsonKey(name: 'urlToImage') String imageUrl,
      @JsonKey(name: 'publishedAt') String publishedAt,
      @JsonKey(name: 'content') String content});
}

/// @nodoc
class __$newsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res>
    implements _$newsCopyWith<$Res> {
  __$newsCopyWithImpl(_news _value, $Res Function(_news) _then)
      : super(_value, (v) => _then(v as _news));

  @override
  _news get _value => super._value as _news;

  @override
  $Res call({
    Object? authorName = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? url = freezed,
    Object? imageUrl = freezed,
    Object? publishedAt = freezed,
    Object? content = freezed,
  }) {
    return _then(_news(
      authorName: authorName == freezed
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: publishedAt == freezed
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_news extends _news {
  const _$_news(
      {@JsonKey(name: 'author') required this.authorName,
      @JsonKey(name: 'title') required this.title,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'url') required this.url,
      @JsonKey(name: 'urlToImage') required this.imageUrl,
      @JsonKey(name: 'publishedAt') required this.publishedAt,
      @JsonKey(name: 'content') required this.content})
      : super._();

  factory _$_news.fromJson(Map<String, dynamic> json) => _$$_newsFromJson(json);

  @override
  @JsonKey(name: 'author')
  final String authorName;
  @override
  @JsonKey(name: 'title')
  final String title;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'url')
  final String url;
  @override
  @JsonKey(name: 'urlToImage')
  final String imageUrl;
  @override
  @JsonKey(name: 'publishedAt')
  final String publishedAt;
  @override
  @JsonKey(name: 'content')
  final String content;

  @override
  String toString() {
    return 'News(authorName: $authorName, title: $title, description: $description, url: $url, imageUrl: $imageUrl, publishedAt: $publishedAt, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _news &&
            const DeepCollectionEquality()
                .equals(other.authorName, authorName) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.imageUrl, imageUrl) &&
            const DeepCollectionEquality()
                .equals(other.publishedAt, publishedAt) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(authorName),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(imageUrl),
      const DeepCollectionEquality().hash(publishedAt),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$newsCopyWith<_news> get copyWith =>
      __$newsCopyWithImpl<_news>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_newsToJson(this);
  }
}

abstract class _news extends News {
  const factory _news(
      {@JsonKey(name: 'author') required String authorName,
      @JsonKey(name: 'title') required String title,
      @JsonKey(name: 'description') required String description,
      @JsonKey(name: 'url') required String url,
      @JsonKey(name: 'urlToImage') required String imageUrl,
      @JsonKey(name: 'publishedAt') required String publishedAt,
      @JsonKey(name: 'content') required String content}) = _$_news;
  const _news._() : super._();

  factory _news.fromJson(Map<String, dynamic> json) = _$_news.fromJson;

  @override
  @JsonKey(name: 'author')
  String get authorName;
  @override
  @JsonKey(name: 'title')
  String get title;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'url')
  String get url;
  @override
  @JsonKey(name: 'urlToImage')
  String get imageUrl;
  @override
  @JsonKey(name: 'publishedAt')
  String get publishedAt;
  @override
  @JsonKey(name: 'content')
  String get content;
  @override
  @JsonKey(ignore: true)
  _$newsCopyWith<_news> get copyWith => throw _privateConstructorUsedError;
}
