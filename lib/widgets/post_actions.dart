import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

import './post_action_button.dart';
import './post_item.dart';

class PostActions extends StatelessWidget {
  const PostActions({
    super.key,
    this.posts = const [],
    required this.postIndex,
    required this.buttonAction,
    required this.postActions,
  });

  final List<String> posts;
  final int postIndex;
  final void Function(int) buttonAction;
  final List<Map<String, Object>> postActions;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      PostItem(
        title: posts[postIndex],
      ),
      ...postActions.map((element) => Text(element['post'] as String)),
      ...(postActions[postIndex]['actions'] as List<String>)
          .mapIndexed((index, action) {
        return PostActionButton(
            title: Text(action), onPressed: () => buttonAction(index));
      })
    ]);
  }
}
