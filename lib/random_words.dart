import 'package:english_words/english_words.dart'; // flutter package get
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Palabras random'),
        ),
        body: const Center(child: RandomWords()),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  const RandomWords({Key? key}) : super(key: key);

  @override
  State<RandomWords> createState() => _RandomWordsState();
}

class _RandomWordsState extends State<RandomWords> {
  final wordPair = WordPair.random(); //a variable valued by the package
  final _saved = <WordPair>[];
  // a set which saves all the words (dictionary)
  final _biggerFont = const TextStyle(fontSize: 18);
  @override
  Widget build(BuildContext context) {
    //return Container();
    return ListView.builder(
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, i) {
          if (i.isOdd) return const Divider();
          //If the element is odd write a divider

          final index = i ~/ 2;
          if (index >= _saved.length) {
            // revise if ther are enough wordsin the screen
            _saved.addAll(generateWordPairs().take(10));
            // We add new ones in these cases
          }
          return ListTile(
            title: Text(
              _saved[index].asPascalCase,
              style: _biggerFont,
            ),
          );
        });
  }
}
