import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class LikeButtom extends StatefulWidget {
  const LikeButtom({Key? key}) : super(key: key);

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
/*
class SaveButtom extends StatefulWidget {
  SaveButtom({Key? key}) : super(key: key);

  @override
  State<SaveButtom> createState() => _SaveButtomState();
}

class _SaveButtomState extends State<SaveButtom> {
  @override
  Widget build(BuildContext context) {
    return const LikeButtom(
      size: 30,
    );
  }
}
https://www.youtube.com/watch?v=FQgk0wlqRsU
*/
