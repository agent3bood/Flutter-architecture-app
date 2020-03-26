// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'graphql_api.graphql.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPosts$Query$Post$User _$GetPosts$Query$Post$UserFromJson(
    Map<String, dynamic> json) {
  return GetPosts$Query$Post$User()
    ..id = json['id'] as String
    ..name = json['name'] as String;
}

Map<String, dynamic> _$GetPosts$Query$Post$UserToJson(
        GetPosts$Query$Post$User instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

GetPosts$Query$Post _$GetPosts$Query$PostFromJson(Map<String, dynamic> json) {
  return GetPosts$Query$Post()
    ..id = json['id'] as String
    ..title = json['title'] as String
    ..author = json['author'] == null
        ? null
        : GetPosts$Query$Post$User.fromJson(
            json['author'] as Map<String, dynamic>);
}

Map<String, dynamic> _$GetPosts$Query$PostToJson(
        GetPosts$Query$Post instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'author': instance.author?.toJson(),
    };

GetPosts$Query _$GetPosts$QueryFromJson(Map<String, dynamic> json) {
  return GetPosts$Query()
    ..posts = (json['posts'] as List)
        ?.map((e) => e == null
            ? null
            : GetPosts$Query$Post.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Map<String, dynamic> _$GetPosts$QueryToJson(GetPosts$Query instance) =>
    <String, dynamic>{
      'posts': instance.posts?.map((e) => e?.toJson())?.toList(),
    };
