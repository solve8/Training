import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hola Caracola'),
        ),
        body: const Post(),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            print('pressed!');
          },
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Feed',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search_outlined),
              label: 'Buscar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(children: [
                const Text(
                  'Hola',
                  style: TextStyle(fontSize: 60),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Volver'))
              ]),
            ),
          ),
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CABEZERA
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://www.pmonti.com/wp-content/uploads/2021/02/sliced-potatoes-put-around-potato-sack-gray-floor.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover, //Que ocupe todo
                    ),
                  ),
                  const SizedBox(width: 13),
                  const Text(
                    'josse_luiss6',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_vert)
            ],
          ),
        ),
        // POST
        Image.network(
            'https://cdn.computerhoy.com/sites/navi.axelspringer.es/public/media/image/2021/09/instagram-tiktok-2484431.jpg'),
        // ABAJO
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite_border_outlined, size: 30),
                  SizedBox(width: 13),
                  Icon(Icons.messenger_outline_rounded, size: 30),
                  SizedBox(width: 13),
                  Icon(Icons.send_sharp, size: 30)
                ],
              ),
              const Icon(Icons.label_important_outline_rounded, size: 30)
            ],
          ),
        ),
        // LIKES Y COMENTARIOS
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '21 Me gusta',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  ClipOval(
                    child: Image.network(
                      'https://www.pmonti.com/wp-content/uploads/2021/02/sliced-potatoes-put-around-potato-sack-gray-floor.jpg',
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover, //Que ocupe todo
                    ),
                  ),
                  const SizedBox(width: 5),
                  const Text(
                    'josse_luiss6',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 5),
                  const Text('Diseño de instagram para aprender'),
                ],
              ),
              const SizedBox(height: 10),
              const Text('Ver 1 comentario',
                  style: TextStyle(color: Color.fromARGB(255, 128, 128, 128))),
            ],
          ),
        )
      ],
    );
  }
}
