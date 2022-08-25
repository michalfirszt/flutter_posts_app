import 'package:flutter/material.dart';

class PostItem extends StatelessWidget {
  const PostItem({Key? key, required this.postTitle}) : super(key: key);

  final String postTitle;

  @override
  Widget build(BuildContext context) {
    return Text(postTitle);
  }
}
