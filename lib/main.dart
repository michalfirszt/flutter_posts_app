import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static String appBarTitle = 'Posts app';
  static List<Widget> posts = [const Text('Post1'), const Text('Post2')];

  void buttonAction(int actionNumber) {
    // ignore: avoid_print
    print('action $actionNumber');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(appBarTitle)),
        body: Column(children: [
          ...posts,
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
