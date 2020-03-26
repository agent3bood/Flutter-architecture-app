import 'package:flutter/foundation.dart';
import 'package:bloc/bloc.dart';

import 'bloc.dart';

import 'package:architecture_app/repositories/post.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final PostRepository postRepository;

  HomeBloc({
    @required this.postRepository,
  });

  @override
  get initialState => HomeInitialState();

  @override
  Stream<HomeState> mapEventToState(event) async* {
    if (event is HomeLoadEvent) {
      try {
        yield HomeLoadingState();
        final posts = await postRepository.getPosts();
        yield HomeLoadedState(
          posts: posts,
        );
      } catch (error) {
        yield HomeErrorState();
      }
    }
  }
}
