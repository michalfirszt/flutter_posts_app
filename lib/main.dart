import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  static String appBarTitle = 'Posts app';
  static List<Widget> posts = [const Text('Post1'), const Text('Post2')];

  @override
  State<App> createState() => AppState();
}

class AppState extends State<App> {
  int postIndex = 0;

  void buttonAction(int actionNumber) {
    int newPostIndex = postIndex + 1;

    if (newPostIndex < App.posts.length) {
      setState(() {
        postIndex = newPostIndex;
      });
    }

    // ignore: avoid_print
    print(postIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(App.appBarTitle)),
        body: Column(children: [
          App.posts[postIndex],
          ElevatedButton(
            onPressed: () => buttonAction(1),
            child: const Text('Action1'),
          ),
          ElevatedButton(
            onPressed: () => buttonAction(2),
            child: const Text('Action2'),
          ),
          ElevatedButton(
            onPressed: () => buttonAction(3),
            child: const Text('Action3'),
          ),
        ]),
      ),
    );
  }
}
