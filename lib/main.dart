import 'package:chat_online/chat_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
  QuerySnapshot snapshot = await Firestore.instance.collection('mensagens').getDocuments();
  snapshot.documents.forEach((d) { 
    d.reference.updateData({'lido':false});
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Flutter',
      theme: ThemeData(
        primaryColor: Colors.blue,
        iconTheme: IconThemeData(
          color: Colors.blue,
        )
      
      ),
      home: ChatScreen()
    );
  }
}

