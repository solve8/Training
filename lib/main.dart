import 'package:flutter/material.dart';
import 'training.dart';
import 'random_words.dart';
import 'citas_contador_appbar.dart';
import 'counter_screen.dart';

void main() {
  runApp(const Canvas());
}

// CUADRO DE LA APP
class Canvas extends StatefulWidget {
  const Canvas({Key? key}) : super(key: key);

  @override
  State<Canvas> createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
  int selectedPage = 0;
  List<Widget> pages = const [Insta(), HomePage(), Home(), CounterScreen()];
  void selectedNav(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
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
