import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //tirei o 'const antes de MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Basic',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
              ),  
              const SizedBox(height: 10),
              Expanded(child: Padding(
                //Esse padding aqui é pra não colcar na tela, encima e embaixo 
                padding: const EdgeInsetsGeometry.symmetric(horizontal: 16, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  //Aqui é pra ele ocupar a largura inteira da tela
                  width: double.infinity,
                  color: Colors.grey,
                ), 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
