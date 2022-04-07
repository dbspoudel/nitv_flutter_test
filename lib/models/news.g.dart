// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_news _$$_newsFromJson(Map<String, dynamic> json) => _$_news(
      authorName: json['author'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      url: json['url'] as String?,
      imageUrl: json['urlToImage'] as String?,
      publishedAt: json['publishedAt'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_newsToJson(_$_news instance) => <String, dynamic>{
      'author': instance.authorName,
      'title': instance.title,
      'description': instance.description,
      'url': instance.url,
      'urlToImage': instance.imageUrl,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
