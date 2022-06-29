import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Insta'),
        ),
        body: const Post(),
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
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Hard Work.jpeg'),
                    radius: 20,
                  ),
                  SizedBox(width: 13),
                  Text(
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
        const Image(image: AssetImage('assets/Hard Work.jpeg')),
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
                children: const [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/Hard Work.jpeg'),
                    radius: 10,
                  ),
                  SizedBox(width: 5),
                  Text(
                    'josse_luiss6',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  Text('Diseño de instagram para aprender'),
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
