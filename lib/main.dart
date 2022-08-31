import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

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

    if (newPostIndex < App.posts.length) {
      setState(() {
        _postIndex = newPostIndex;
      });
    }

    // ignore: avoid_print
    print('actionNumber: $actionNumber');
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
          ...postActions.map((element) => Text(element['post'] as String)),
          ...(postActions[_postIndex]['actions'] as List<String>)
              .mapIndexed((index, action) {
            return PostActionButton(
                title: Text(action), onPressed: () => _buttonAction(index));
          })
        ]),
      ),
    );
  }
}
