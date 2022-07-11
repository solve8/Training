import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class FavoriteButtom extends StatefulWidget {
  const FavoriteButtom({Key? key}) : super(key: key);

  @override
  State<FavoriteButtom> createState() => _FavoriteButtomState();
}

class _FavoriteButtomState extends State<FavoriteButtom> {
  @override
  Widget build(BuildContext context) {
    return const LikeButton(
      size: 30,
    );
  }
}

//https://www.youtube.com/watch?v=FQgk0wlqRsU
