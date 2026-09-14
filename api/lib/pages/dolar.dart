import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Dolar extends StatefulWidget{
  const Dolar({super.key});

  @override
  State<Dolar> createState() => _DolarState();
}

class _DolarState extends State<Dolar> {
  String real = '';

  Future<void> consultar() async {
    final url = Uri.parse(
      'https://economia.awesomeapi.com.br/last/USD-BRL'
    );
    final resposta = await http.get(url);
    final dados = jsonDecode(resposta.body);

    setState(() {
      real = '${dados['USDBRL']['name']}\n${dados['USDBRL']['high']}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consulta de dolar'),
      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
        
          child: Column(
            children: [
        
              const Icon(
                Icons.location_on,
                size: 100,
              ),
        
              ElevatedButton(
                onPressed: consultar,
                child: const Text('Consultar'),
              ),
        
              const SizedBox(height: 30),
        
              Text(
                real,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}