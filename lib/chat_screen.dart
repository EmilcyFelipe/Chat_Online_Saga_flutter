import 'package:chat_online/text_composer.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:Text("Olá, Felipe"),
        elevation: 0 ,
        ),
      body: TextComposer(),
    );
  }
}