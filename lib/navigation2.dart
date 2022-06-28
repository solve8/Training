import 'package:flutter/material.dart';

class NavApp extends StatelessWidget {
  const NavApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen()
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('First Screen')),
      body: ElevatedButton(
        child: const Text('Go to Screen Two'),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        }, //"pushses" navigation to a new screen
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second screen'),
        //automaticallyImplyLeading: false, to remove the arrow to go back
      ),
      body: ElevatedButton(
        child: const Text('Go to Screen Two'),
        onPressed: () {
          Navigator.pop(context); //"pops" back to the previous screen
        },
      ),
    );
  }
}
