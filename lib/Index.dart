import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Canvas());
  }
}

class Canvas extends StatefulWidget {
  Canvas({Key? key}) : super(key: key);

  @override
  State<Canvas> createState() => _CanvasState();
}

class _CanvasState extends State<Canvas> {
  int selectedPage = 0;
  List<Widget> Pages = const [
    Center(child: Text('Casa')),
    Center(child: Text('Hola')),
    Center(child: Text('Perfil'))
  ];
  void selectedNav(int index) {
    setState(() {
      selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegación"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      bottomNavigationBar: BottomNavigationBar(
        // This is thought ass a list
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "f"),
          BottomNavigationBarItem(icon: Icon(Icons.house), label: "f"),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "f")
        ],
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.black,
        currentIndex: selectedPage,
        onTap: selectedNav,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 30,
      ),
    );
  }
}
