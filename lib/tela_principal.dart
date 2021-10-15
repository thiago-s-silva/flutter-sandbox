import 'package:flutter/material.dart';
import 'package:flutter_sandbox/tela_secundaria.dart';

class TelaPrincipal extends StatefulWidget {
  TelaPrincipal({Key? key}) : super(key: key);

  @override
  _TelaPrincipalState createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela principal'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // TODO: Ler sobre rotas nomeadas
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TelaSecundaria(
                              title: 'Dados da primeira tela',
                            )));
              },
              child: const Text('Ir para outra tela'),
            )
          ],
        ),
      ),
    );
  }
}
