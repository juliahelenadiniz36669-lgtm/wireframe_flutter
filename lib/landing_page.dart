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
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(12),

        child: Column(
          children: [
            const Text(
              'Landing Page',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // BANNER
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey[400],
            ),

            const SizedBox(height: 15),

            // 2 QUADROS
            Expanded(
              child: Row(
                children: [

                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
                    ),
                  ),

                  const SizedBox(width: 10),

                  Expanded(
                    child: Container(
                      color: Colors.grey[300],
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