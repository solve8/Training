import 'package:flutter/material.dart';
import 'package:training/Home/like_button.dart';

/*
En este archivo lo primero qie encontramos el "cuadro general", es decir, el app
bar y el botón flotante.

A continuación se ver lo que encontramos la definición del objeto comentario con
sus 3 propiedades: foto, usuario y comentario.

Después vemos el widget de la lista de comentarios.

Finalmente podemos lo que es el widget de comentario, el modelo de elemento de 
la lista.
*/
class Coments extends StatefulWidget {
  const Coments({Key? key}) : super(key: key);

  @override
  State<Coments> createState() => _ComentsState();
}

class _ComentsState extends State<Coments> {
  late Comment comment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Comentarios', style: TextStyle(color: Colors.black)),
        centerTitle: false,
        backgroundColor: Colors.white,
      ),
      body: const CommentList(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        onPressed: () => startComment(),
      ),
    );
  }

  PersistentBottomSheetController startComment() {
    return showBottomSheet(
        elevation: 10,
        context: context,
        builder: (context) => SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
                child: Row(
                  children: [
                    const Expanded(child: TextField()),
                    const SizedBox(width: 10),
                    IconButton(
                        icon: const Icon(Icons.send),
                        onPressed: () {
                          setState(() => commentList.add(Comment(
                              userPhoto: const CircleAvatar(
                                  backgroundImage:
                                      AssetImage('assets/Hard Work.jpeg')),
                              userName: 'Juan',
                              userComment: 'No, no lo eres')));
                        })
                  ],
                ),
              ),
            ));
  }
}

class Comment {
  CircleAvatar userPhoto;
  String userName;
  String userComment;
  Comment(
      {required this.userPhoto,
      required this.userName,
      required this.userComment});
}

List<Comment> commentList = [
  Comment(
      userPhoto: const CircleAvatar(
          backgroundImage: AssetImage('assets/Hard Work.jpeg')),
      userName: 'Pepe',
      userComment: 'Papanatas es un señor muy amable. Soy papanatas.')
];

class CommentList extends StatefulWidget {
  const CommentList({Key? key}) : super(key: key);

  @override
  State<CommentList> createState() => _CommentListState();
}

class _CommentListState extends State<CommentList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: commentList
              .map((comment) => CommentCard(comment: comment))
              .toList()),
    );
  }
}

class CommentCard extends StatelessWidget {
  const CommentCard({Key? key, required this.comment}) : super(key: key);
  final Comment comment; // final are required
  static const trailingStyle = TextStyle(fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 0,
        child: ListTile(
          leading: comment.userPhoto,
          title: Text(comment.userName,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          subtitle:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(comment.userComment,
                style: TextStyle(fontSize: 16, color: Colors.grey[800])),
            Row(children: [
              const Text(
                '14h',
                style: trailingStyle,
              ),
              TextButton(
                child: const Text(
                  'Responder',
                  style: trailingStyle,
                ),
                onPressed: () => showBottomSheet(
                    context: context,
                    builder: (context) => const SizedBox(
                          height: 80,
                          child: TextField(),
                        )),
              )
            ]),
          ]),
          trailing: const Icon(Icons.favorite_border),
        ));
  }
}
