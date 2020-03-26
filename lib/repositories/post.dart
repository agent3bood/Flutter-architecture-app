import 'package:flutter/foundation.dart';
import 'package:architecture_app/graphql/graphql_api.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class PostRepository {
  final GraphQLClient client;

  PostRepository({
    @required this.client,
  });

  Future<List<GetPosts$Query$Post>> getPosts() async {
    final results = await client.query(
      QueryOptions(
        documentNode: GetPostsQuery().document,
      ),
    );
    print(results);
    if (results.hasException) {
      throw results.exception;
    } else {
      return GetPosts$Query.fromJson(results.data).posts;
    }
  }
}
