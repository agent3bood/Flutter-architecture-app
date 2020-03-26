import 'package:flutter/foundation.dart';
import 'package:architecture_app/graphql/graphql_api.dart';

class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<GetPosts$Query$Post> posts;
  HomeLoadedState({
    @required this.posts,
  });
}

class HomeErrorState extends HomeState {}
