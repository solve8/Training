import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtom extends StatefulWidget {
  LikeButtom({Key? key}) : super(key: key);

  @override
  State<LikeButtom> createState() => _LikeButtomState();
}

class _LikeButtomState extends State<LikeButtom> {
  @override
  Widget build(BuildContext context) {
    return const LikeButton(
      size: 30,
    );
  }
}
