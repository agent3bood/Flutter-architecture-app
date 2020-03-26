// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:meta/meta.dart';
import 'package:artemis/artemis.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import 'package:gql/ast.dart';
part 'graphql_api.graphql.g.dart';

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$Post$User with EquatableMixin {
  GetPosts$Query$Post$User();

  factory GetPosts$Query$Post$User.fromJson(Map<String, dynamic> json) =>
      _$GetPosts$Query$Post$UserFromJson(json);

  String id;

  String name;

  @override
  List<Object> get props => [id, name];
  Map<String, dynamic> toJson() => _$GetPosts$Query$Post$UserToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query$Post with EquatableMixin {
  GetPosts$Query$Post();

  factory GetPosts$Query$Post.fromJson(Map<String, dynamic> json) =>
      _$GetPosts$Query$PostFromJson(json);

  String id;

  String title;

  GetPosts$Query$Post$User author;

  @override
  List<Object> get props => [id, title, author];
  Map<String, dynamic> toJson() => _$GetPosts$Query$PostToJson(this);
}

@JsonSerializable(explicitToJson: true)
class GetPosts$Query with EquatableMixin {
  GetPosts$Query();

  factory GetPosts$Query.fromJson(Map<String, dynamic> json) =>
      _$GetPosts$QueryFromJson(json);

  List<GetPosts$Query$Post> posts;

  @override
  List<Object> get props => [posts];
  Map<String, dynamic> toJson() => _$GetPosts$QueryToJson(this);
}

class GetPostsQuery extends GraphQLQuery<GetPosts$Query, JsonSerializable> {
  GetPostsQuery();

  @override
  final DocumentNode document = DocumentNode(definitions: [
    OperationDefinitionNode(
        type: OperationType.query,
        name: NameNode(value: 'getPosts'),
        variableDefinitions: [],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
              name: NameNode(value: 'posts'),
              alias: null,
              arguments: [],
              directives: [],
              selectionSet: SelectionSetNode(selections: [
                FieldNode(
                    name: NameNode(value: 'id'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'title'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null),
                FieldNode(
                    name: NameNode(value: 'author'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                          name: NameNode(value: 'id'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null),
                      FieldNode(
                          name: NameNode(value: 'name'),
                          alias: null,
                          arguments: [],
                          directives: [],
                          selectionSet: null)
                    ]))
              ]))
        ]))
  ]);

  @override
  final String operationName = 'getPosts';

  @override
  List<Object> get props => [document, operationName];
  @override
  GetPosts$Query parse(Map<String, dynamic> json) =>
      GetPosts$Query.fromJson(json);
}
