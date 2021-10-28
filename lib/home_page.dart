import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _price = "0";

  void _getPrice() async {
    Uri _url = Uri.parse("https://blockchain.info/ticker");
    http.Response response = await http.get(_url);

    Map<String, dynamic> data = json.decode(response.body);

    setState(() {
      _price = data['BRL']['buy'].toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("imagens/bitcoin.png"),
              Padding(
                padding: const EdgeInsets.only(top: 30, bottom: 30),
                child: Text(
                  'R\$ $_price',
                  style: const TextStyle(fontSize: 35),
                ),
              ),
              ElevatedButton(
                onPressed: _getPrice,
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                ),
                child: const Text(
                  'Atualizar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
