import 'package:flutter/material.dart';
//Julia Helena Diniz

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
 Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TwoColumnPage(),
    );
  }
}

class TwoColumnPage extends StatelessWidget {
  const TwoColumnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [

            // TEXTO NO MEIO
            const Center(
              child: Text(
                '2 colunas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // DUAS COLUNAS
            Expanded(
              child: Row(
                children: [

                  // COLUNA ESQUERDA
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),

                  const SizedBox(width: 20),

                  // COLUNA DIREITA
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