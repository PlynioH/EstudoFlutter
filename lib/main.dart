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
  int currentIndex = 0;

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
          //Cria o tamanho do fundo para preencher de widget
          child: SizedBox(
            width: 300,
            child: Column(
              //Alinha os botões, dados...
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //Botão de interação
                ElevatedButton(
                  onPressed: () {
                    //Pode realizar uma mudança de estado
                    setState(() {
                      buttonName = 'Clicked';
                    });
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        buttonName = 'Clicked2';
                      });
                    },
                    child: Text(buttonName))
              ],
            ),
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
          //Muda as abas quando clicadas a partir de seu index
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
