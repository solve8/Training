import 'package:flutter/material.dart';

class Quote {
  String text = ""; // late is for not difine the value
  String author = "";

  Quote({required this.text, required this.author});
  // the constructor is necessary because it set the values
  // When we put them into calibrases => propierties
}

//The class would be sth like Quote(text:'hello!!', author:'Pepito')
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  // F U N C T I O N S
  // 1. Return type
  // 2. Function name
  // 3. The resulting widget tree
  List<Quote> quotes = [
    Quote(author: 'Y esto el autor', text: 'Esta sería la cita incial')
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Historial',
          style: TextStyle(fontSize: 20),
        ),
        ElevatedButton(
            child: const Text('Orange'),
            onPressed: () => setState(() => quotes.add(Quote(
                text:
                    'El botón en teoría sobra, solo imita la segunda función que debería realizar',
                author: 'Pero no sé')))),
        const Divider(
          height: 15,
          color: Colors.grey,
        ),
        Column(
            children: quotes.map((quote) => QuoteCard(quote: quote)).toList()),
        // Cyclce throw a list of data and for each item it's wonna a function
        // must be on alone in the column, row...
        // When we introduce a variable with .sth calibrases ({}) ara needed
      ],
    );
  }
}

// C A R D
class QuoteCard extends StatelessWidget {
  // MAKING THE PROPIERTY
  // 1. ~ We difine the quote element
  final Quote quote;
  const QuoteCard({Key? key, required this.quote}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      //margin: EdgeInsets.all(40), //The empty space that sorrounds the card
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18, color: Colors.grey[600]),
            ),
            const SizedBox(height: 6),
            Text(quote.author,
                style: TextStyle(fontSize: 14, color: Colors.grey[800]))
          ],
        ),
      ),
    );
  }
}
