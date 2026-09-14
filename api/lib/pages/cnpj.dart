import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Cnpj extends StatefulWidget{
  const Cnpj({super.key});

  @override
  State<Cnpj> createState() => _CnpjState();
}

class _CnpjState extends State<Cnpj> {
  final TextEditingController cnpj = TextEditingController();
  String empresa = '';

  Future<void> consultar() async {
    final url = Uri.parse(
      'https://api.opencnpj.org/${cnpj.text}'
    );

    final resposta = await http.get(url);
    final dados = jsonDecode(resposta.body);

    setState(() {
      empresa =
        '${dados['razao_social']}\n'
        '${dados['nome_fantasia']}\n'
        '${dados['situacao_cadastral']}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta CEP'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            const Icon(Icons.location_on, size: 100),

            const SizedBox(height: 30),

            TextField(
              controller: cnpj,
              decoration: const InputDecoration(
                labelText: 'CEP',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: consultar,
              child: const Text('Consultar'),
            ),

            const SizedBox(height: 30),

            Text(empresa, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}