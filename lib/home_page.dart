import 'package:flutter/material.dart';
import 'package:flutter_sandbox/models/cep_model.dart';
import 'package:flutter_sandbox/repository/cep_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _result = "";
  TextEditingController _cepController = TextEditingController();

  void _getCep() async {
    CepModel cep = await CepRepository().getCep(_cepController.text);
    setState(() {
      _result = cep.fullAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consumo de Serviço Web'),
      ),
      body: Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: "Digite o seu cep aqui",
              ),
              style: const TextStyle(fontSize: 20),
              controller: _cepController,
            ),
            RaisedButton(
              child: const Text('Buscar CEP'),
              onPressed: _getCep,
            ),
            Text(_result)
          ],
        ),
      ),
    );
  }
}
