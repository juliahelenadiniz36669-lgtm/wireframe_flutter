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
                'Article Left.2',
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

                  //A partir daqui são as caixas com cor
                  child: Column(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),

                      //Espaçemnto entre os dois bloquinhos
                      const SizedBox(height: 10),

                      // Isso daqui é a segunda coluna
                      Expanded(
                        flex: 6,
                        child: Row(
                          children: [

                            //Esse daqui vai ser o blobo maior na Esquerdaa
                            Expanded(
                              flex: 3,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 77, 76, 76),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                            ),
                            //Espaço dos dois bloquinhos

                            const SizedBox(width: 10,),

                            //Bloco menor da direita aqui
                            Expanded(
                              flex: 1,
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
                      //Aqui é um espaço vertical
                      const SizedBox(height: 10),

                      //Essa parte aqui vai ser a caixa de baixo (a menor ali)
                      //Eu não vou usar o 'Expanded' e eu vou usar o sizedBox pra uma altura melhor
                      Expanded(
                        flex: 1,
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 34, 34, 34),
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      )
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