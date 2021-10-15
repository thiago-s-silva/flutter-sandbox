import 'package:flutter/material.dart';

class TelaSecundaria extends StatefulWidget {
  String title;

  TelaSecundaria({Key? key, required this.title}) : super(key: key);

  @override
  _TelaSecundariaState createState() => _TelaSecundariaState();
}

class _TelaSecundariaState extends State<TelaSecundaria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela secundaria'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [Text(widget.title)],
        ),
      ),
    );
  }
}
