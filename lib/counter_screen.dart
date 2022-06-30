import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

// when it's between <> means type

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontTextSize = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contador'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Text('Número de clicks', style: fontTextSize),
            Text('$counter', style: fontTextSize),
          ])),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            child: const Icon(Icons.exposure_minus_1_outlined),
            onPressed: () => setState(() => counter--),
          ),
          FloatingActionButton(
            child: const Icon(Icons.restore),
            onPressed: () => setState(() => counter = 0),
          ),
          FloatingActionButton(
            child: const Icon(Icons.exposure_plus_1_outlined),
            onPressed: () => setState(() => counter++),
          ),
        ],
      ),
    );
  }
}

//body es todo el fondo del el scaffold
// El BuildContext sabe el contexto en el que el widget es construido
// mainAxisAlignment means alignment use the main axis to align
// To use the secondary axis we use crossAxisAlignment
// With $ we introduce a variable into a string
// We write the variables after the override but the porpierties
//are written before the override
//setState order to rewrite the widget because needs to be changed
//SizedBox is like an invisible container that we would use instead of
//the manAxisAlignment
//We can use => instead of {}