import 'package:architecture_app/graphql/graphql_api.graphql.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<GetPosts$Query$Post> _posts = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Architecture demo'),
      ),
      body: Container(
        child: BlocListener<HomeBloc, HomeState>(
          listener: (context, state) {
            if (state is HomeLoadedState) {
              _posts.addAll(state.posts);
            }
          },
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state is HomeLoadingState) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state is HomeLoadedState) {
                return RefreshIndicator(
                  onRefresh: () async {
                    _posts = [];
                    BlocProvider.of<HomeBloc>(context).add(
                      HomeLoadEvent(),
                    );
                  },
                  child: ListView.builder(
                    itemCount: _posts.length,
                    itemBuilder: (context, index) {
                      final post = _posts[index];
                      return ListTile(
                        key: Key(post.id),
                        title: Text(post.title),
                        subtitle: Text('By: ${post.author.name}'),
                      );
                    },
                  ),
                );
              } else {
                return Container(
                  child: Center(
                    child: Text('You have an error'),
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
