import 'package:flutter/material.dart';
import '../SendMezclijo/quotes.dart';

//import 'package:flutter_secure_storage/flutter_secure_storage.dart';
//flutter pub add y packages get

// I N D E X
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
                const SizedBox(height: 10),
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
                Container(
                    child: const QuoteList(),
                    padding: const EdgeInsets.all(10),
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: const LinearGradient(
                          colors: [Color(0xFFffbb00), Color(0xFFf38c02)],
                          begin: FractionalOffset(1.0, 0.1),
                          end: FractionalOffset(1.0, 0.9),
                        ))),
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
