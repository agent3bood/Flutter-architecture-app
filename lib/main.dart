import 'package:architecture_app/client.dart';
import 'package:architecture_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'package:architecture_app/screens/home/bloc.dart';
import 'package:architecture_app/repositories/post.dart';

GraphQLClient _client = client.value;
PostRepository postRepository = PostRepository(
  client: _client,
);

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Architecture demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => HomeBloc(
          postRepository: postRepository,
        )..add(HomeLoadEvent()),
        child: HomeScreen(),
      ),
    );
  }
}
