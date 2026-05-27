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
      home: const TwoRowPage(),
    );
  }
}

class TwoRowPage extends StatelessWidget {
  const TwoRowPage({super.key});

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
                '2 linhas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // DUAS LINHAS
            Expanded(
              child: Column(
                children: [

                  // LINHA SUPERIOR
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),

                  const SizedBox(height: 20),

                  // LINHA INFERIOR
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