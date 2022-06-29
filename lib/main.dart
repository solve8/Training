import 'package:flutter/material.dart';
import 'package:training/home.dart';
import 'package:training/training.dart';
import 'random_words.dart';
import 'home.dart';

void main() {
  runApp(const Canvas());
}

class Canvas extends StatefulWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  State<Canvas> createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
  int selectedPage = 0;
  List<Widget> pages = const [
    MyApp(),
    HomePage(),
    Home(),
    Center(child: Text('Perfil'))
  ];
  void selectedNav(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: pages.elementAt(selectedPage),
        bottomNavigationBar: BottomNavigationBar(
          // This is thought ass a list
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.house), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Buscar"),
            BottomNavigationBarItem(icon: Icon(Icons.send), label: "Enviar"),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: "Perfil")
          ],
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.black,
          currentIndex: selectedPage,
          onTap: selectedNav,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 30,
        ),
      ),
    );
  }
}
