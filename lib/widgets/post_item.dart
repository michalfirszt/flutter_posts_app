import 'package:flutter/material.dart';

import '../constants/theme.dart' as theme;

class PostItem extends StatelessWidget {
  const PostItem(
      {Key? key, required this.title, this.description = '', this.content})
      : super(key: key);

  final String title;
  final String description;
  final String? content;

  // SizedBox(width: double.infinity,)
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(theme.spaceUnit),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: theme.spaceUnit * 3),
      ),
    );
  }
}
