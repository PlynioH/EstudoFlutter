import 'package:flutter/material.dart';

//Importante colocar  ',' no final de cada linha para ter uma melhor formatação do código
//StatelessWidget não permite alteração visual em tela
//StatefulWidget permite alterações que o StatelessWidget não permite

void main() {
  //Aplicação
  runApp(MyApp());
}

//Desenvolvimento da aplicação
class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //Declaração de Variavel
  String buttonName = 'click';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Tira o banner de demonstração
      debugShowCheckedModeBanner: false,

      //Scaffold é a tela branca onde podemos colocar os dados da tela
      home: Scaffold(
        //Barra da aplicação
        appBar: AppBar(
          title: const Text('App Title'),
        ),

        //Insere valores
        body: Center(
          //Botão de interação
          child: ElevatedButton(
            onPressed: () {
              //Pode realizar uma mudança de estado
              setState(() {
                buttonName = 'Clicked';
              });
            },
            child: Text(buttonName),
          ),
        ),

        //Botões de navegação
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            //Botão de nevagação 1
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),

            //Botão de nevagação 2
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
