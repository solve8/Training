import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:training/Home/coments.dart';

class Insta extends StatelessWidget {
  const Insta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const Post(),
        '/coments': (BuildContext context) => const Coments()
      },
    );
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text('Insta'), centerTitle: true),
        body: Column(
          children: [
            // CABEZERA
            const Header(),
            // POST
            const Image(image: AssetImage('assets/Hard Work.jpeg')),
            // BOTONES
            const Buttons(),
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
                      style:
                          TextStyle(color: Color.fromARGB(255, 128, 128, 128))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// C A B E C E R A
class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const PopUpMenu(menuList: [
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.share),
              title: Text('Compartir'),
            )),
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.link),
              title: Text('Vincular'),
            )),
            PopupMenuDivider(),
            PopupMenuItem(
                child: ListTile(
              leading: Icon(Icons.report),
              title: Text('Report'),
            ))
          ])
        ],
      ),
    );
  }
}

// B O T O N E S
class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const LikeButton(),
              const SizedBox(width: 13),
              IconButton(
                icon: const Icon(Icons.messenger_outline_rounded, size: 30),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Coments()));
                },
              ),
              const SizedBox(width: 13),
              const Icon(Icons.send_sharp, size: 30)
            ],
          ),
          const Icon(Icons.label_important_outline_rounded, size: 30)
        ],
      ),
    );
  }
}

class PopUpMenu extends StatelessWidget {
  final List<PopupMenuEntry> menuList;
  const PopUpMenu({Key? key, required this.menuList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      itemBuilder: (context) => menuList,
      icon: const Icon(Icons.more_vert),
    );
  }
}
