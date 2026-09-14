import 'package:api/pages/cep.dart';
import 'package:api/pages/cnpj.dart';
import 'package:api/pages/dolar.dart';
import 'package:api/pages/login.dart';
import 'package:api/pages/trabalho.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Principal',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                top: 60,
                bottom: 30,
              ),
              decoration: const BoxDecoration(
                color: Color(0xFF283747),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xFF5D6D7E),
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),

                  SizedBox(height: 15),

                  Text(
                    'MENU',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            ListTile(
              leading: const Icon(
                Icons.home,
                color: Color(0xFF283747),
              ),
              title: const Text('Principal'),
              onTap: () {
                Navigator.pop(context);
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.work,
                color: Color(0xFF374728),
              ),
              title: const Text('Trabalho'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Trabalho(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.work,
                color: Color(0xFF374728),
              ),
              title: const Text('CEP'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cep(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.work,
                color: Color(0xFF374728),
              ),
              title: const Text('CNPJ'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cnpj(),
                  ),
                );
              },
            ),

            ListTile(
              leading: const Icon(
                Icons.work,
                color: Color(0xFF374728),
              ),
              title: const Text('DOLAR'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dolar(),
                  ),
                );
              },
            ),

            const Spacer(),

            ListTile(
              leading: const Icon(
                Icons.logout,
                color: Color(0xFF472837),
              ),
              title: const Text('Logout'),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Login(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      body: Center(
        child: Container(
          margin: const EdgeInsets.all(24),
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: const Color(0xFFF4F5F6),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.home,
                size: 70,
                color: Color(0xFF283747),
              ),

              SizedBox(height: 15),

              Text(
                'Tela Principal',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF283747),
                ),
              ),

              SizedBox(height: 8),

              Text(
                'Bem-vindo ao sistema!',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF5D6D7E),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}