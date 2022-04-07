import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';

@freezed
class News with _$News {
  const News._();

  const factory News({
    @JsonKey(name: 'author') required final String authorName,
    @JsonKey(name: 'title') required final String title,
    @JsonKey(name: 'description') required final String description,
    @JsonKey(name: 'url') required final String url,
    @JsonKey(name: 'urlToImage') required final String imageUrl,
    @JsonKey(name: 'publishedAt') required final String publishedAt,
    @JsonKey(name: 'content') required final String content,
  }) = _news;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
}
