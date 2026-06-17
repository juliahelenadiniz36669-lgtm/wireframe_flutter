import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // tirei o 'const antes de MaterialApp
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '3 Rows',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  // Esse padding aqui é pra não colar na tela, em cima e embaixo e enfim
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      // Isso AQUI é pra colocar um espaço das colunass (da primeira e da segunda, que ta na coluna)
                      //Coloquei o HEIGHT pra dar o espaçamento na vertical
                      const SizedBox(height: 10),

                      // Isso daqui é a segunda coluna
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 77, 76, 76),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      // Isso daqui é um espaço da segunda com a terceira coluna ali, vertical 
                      //Espaçamento vertical 
                      const SizedBox(height: 10),

                      // Isso daqui é a terceira coluna
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 53, 53, 53),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),  
                    ],
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