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
      home: const FourColumnPage(),
    );
  }
}

class FourColumnPage extends StatelessWidget {
  const FourColumnPage({super.key});

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
                '4 colunas',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Row(
                children: [
                  
                  //1 coluna
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(width: 20),
                  
                  //2 coluna
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(width: 20),
                  
                  //3 coluna
                  Expanded(
                    child: Container(
                      color: Colors.grey[500],
                    ),
                  ),
                  const SizedBox(width: 20),
                  
                  //4 coluna
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