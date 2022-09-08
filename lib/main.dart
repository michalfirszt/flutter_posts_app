import 'package:flutter/material.dart';

import './widgets/post_actions.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  static String appBarTitle = 'Posts app';
  static List<String> posts = ['Post1', 'Post2'];

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int _postIndex = 0;
  List<Map<String, Object>> postActions = [
    {
      'post': 'Post1',
      'actions': ['post1 action1', 'post1 actions2']
    },
    {
      'post': 'Post2',
      'actions': ['post2 action1', 'post2 actions2']
    },
  ];

  void _buttonAction(int actionNumber) {
    int newPostIndex = _postIndex + 1;

    setState(() {
      _postIndex = newPostIndex;
    });

    if (newPostIndex < App.posts.length) {
      // ignore: avoid_print
      print('post is available');
    }

    // ignore: avoid_print
    print('actionNumber: $actionNumber');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(App.appBarTitle)),
        body: _postIndex < App.posts.length
            ? PostActions(
                postIndex: _postIndex,
                buttonAction: _buttonAction,
                posts: App.posts,
                postActions: postActions,
              )
            : const Center(
                child: Text('All actions'),
              ),
      ),
    );
  }
}
