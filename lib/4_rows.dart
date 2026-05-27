import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FourRowPage(),
    );
  }
}

class FourRowPage extends StatelessWidget {
  const FourRowPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Center(
              child: Text(
                '4 linhas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // QUATRO LINHAS
            Expanded(
              child: Column(
                children: [

                  // LINHA SUPERIOR ESQUERDA
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // LINHA SUPERIOR DIREITA
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // LINHA INFERIOR ESQUERDA
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // LINHA INFERIOR DIREITA
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}