import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ThreeColumnPage(),
    );
  }
}

class ThreeColumnPage extends StatelessWidget {
  const ThreeColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [

            const Text(
              '3 Column',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // TOPO
            Container(
              height: 40,
              width: double.infinity,
              color: Colors.grey[300],
            ),

            const SizedBox(height: 15),

            // 3 COLUNAS
            Expanded(
              child: Row(
                children: [

                  // ESQUERDA
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey[300],
                    ),
                  ),

                  const SizedBox(width: 10),

                  // MEIO
                  Expanded(
                    flex: 3,
                    child: Container(
                      color: Colors.grey[400],
                    ),
                  ),

                  const SizedBox(width: 10),

                  // DIREITA
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // RODAPÉ
            Container(
              height: 30,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ],
        ),
      ),
    );
  }
}