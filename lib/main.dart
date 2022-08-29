import 'package:flutter/material.dart';

import './widgets/post_action_button.dart';
import './widgets/post_item.dart';

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

  void _buttonAction(int actionNumber) {
    int newPostIndex = _postIndex + 1;

    if (newPostIndex < App.posts.length) {
      setState(() {
        _postIndex = newPostIndex;
      });
    }

    // ignore: avoid_print
    print(_postIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(App.appBarTitle)),
        body: Column(children: [
          PostItem(
            title: App.posts[_postIndex],
          ),
          PostActionButton(
            onPressed: () => _buttonAction(1),
            title: const Text('Action1'),
          ),
          PostActionButton(
            onPressed: () => _buttonAction(2),
            title: const Text('Action2'),
          ),
          PostActionButton(
            onPressed: () => _buttonAction(3),
            title: const Text('Action3'),
          ),
        ]),
      ),
    );
  }
}
