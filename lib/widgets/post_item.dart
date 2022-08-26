import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem(
      {Key? key, required this.title, this.description = '', this.content})
      : super(key: key);

  final String title;
  final String description;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Text(title);
  }
}
