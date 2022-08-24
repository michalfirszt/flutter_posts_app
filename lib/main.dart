import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String appBarTitle = 'Posts app';
    List<Widget> posts = [const Text('Post1'), const Text('Post2')];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text(appBarTitle)),
        body: Column(children: [
          ...posts,
          const ElevatedButton(onPressed: null, child: Text('Action1'))
        ]),
      ),
    );
  }
}
