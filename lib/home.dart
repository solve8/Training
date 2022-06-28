import 'package:flutter/material.dart';
import 'quotes.dart';
import 'training.dart';
import 'learn.dart';
import 'Index.dart';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//flutter pub add y packages get

// I N D E X
class Index extends StatelessWidget {
  const Index({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/training': (context) => const MyApp(),
        '/learn': (context) => const HomePage(),
        '/index': (context) => Navigation(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//The data or states that will change over the time
int caca = 0;
var color = Colors.blue;

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Pruebas'),
        centerTitle: true,
        backgroundColor: color,
        //elevation: 0,
      ),
      drawer: Drawer(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(15),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Text(
              'PAGES',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const Divider(color: Colors.grey),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/training');
                },
                child: const Text('Training', style: TextStyle(fontSize: 18))),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/learn');
                },
                child: const Text('Learn', style: TextStyle(fontSize: 18))),
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/index');
                },
                child: const Text('Navegación', style: TextStyle(fontSize: 18)))
          ]),
        )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/Hard Work.jpeg'),
                  radius: 50,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Contador:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  '$caca',
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color = Colors.orange;
                          });
                        },
                        child: const Text('Orange')),
                    const SizedBox(width: 10),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            color = Colors.green;
                          });
                        },
                        child: const Text('Green')),
                  ],
                ),
                const QuoteList(),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            caca += 1;
          });
        },
        child: const Icon(Icons.add),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    ));
  }
}
