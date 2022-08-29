import 'package:flutter/material.dart';

class PostActionButton extends StatelessWidget {
  const PostActionButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor,
  }) : super(key: key);

  final Widget title;
  final void Function() onPressed;
  final MaterialStateProperty<Color?>? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor:
              backgroundColor ?? MaterialStateProperty.all<Color>(Colors.green),
        ),
        child: title,
      ),
    );
  }
}
