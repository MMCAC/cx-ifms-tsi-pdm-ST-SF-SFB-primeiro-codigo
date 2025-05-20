import "package:flutter/material.dart";

class MeuAppSFB extends StatelessWidget{
  MeuText meuText = MeuText();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme(),
      home: buildScaffold(context),
    );
  }

  ThemeData myTheme(){
    return ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors. blueAccent,
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: Colors.indigo,
      )
    );
  }

  Scaffold buildScaffold(context){
    return Scaffold(
      appBar: buildAppBar(),
      body: buildBody(),
      floatingActionButton: buildFAB(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      title: Text("Meu App"),
    );
  }

  Widget buildBody(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          meuText
        ],
      ),
    );
  }

  FloatingActionButton buildFAB(){
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: acaoBotao(),
    );
  }

  acaoBotao(){
    meuText.updateState();
  }
}

class MeuText extends StatefulWidget{
  MeuTextState state = MeuTextState();

  @override
  State<StatefulWidget> createState() {
    return state;
  }

  updateState(){
    state.updateState();
  }
}

class MeuTextState extends State<MeuText>{
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Text("Olá Mundo! ${count}",style: TextStyle(fontSize: 24));
  }

  updateState(){
    setState(() {
      count++;
    });
  }
  
}

// Versão do ChatGPT, que disse que não é correto ficar externalizando instâncias de estados para fora do createState, recomendando manter uma estrutura full Statefull.

// import 'package:flutter/material.dart';

// // MyApp é um StatelessWidget que apenas configura o MaterialApp.
// class Teste extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         appBarTheme: AppBarTheme(
//           color: Colors.blueAccent,
//           foregroundColor: Colors.white,
//         ),
//         colorScheme: ColorScheme.fromSeed(
//           brightness: Brightness.dark,
//           seedColor: Colors.indigo,
//         ),
//       ),
//       home: HomePage(),
//     );
//   }
// }

// // HomePage é o StatefulWidget que controla o estado do contador.
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// // O estado do contador está aqui.
// class _HomePageState extends State<HomePage> {
//   int count = 0;

//   void incrementCounter() {
//     setState(() {
//       count++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Meu App"),
//       ),
//       body: Center(
//         child: MeuTexto(count: count), // Passa o count para o widget
//       ),
//       floatingActionButton: FloatingActionButton(
//         child: Icon(Icons.add),
//         onPressed: incrementCounter,
//       ),
//     );
//   }
// }

// // Widget separado só para exibir o texto (Stateless, pois só recebe props).
// class MeuTexto extends StatelessWidget {
//   final int count;

//   const MeuTexto({Key? key, required this.count}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Text(
//       "Olá Mundo! $count",
//       style: TextStyle(fontSize: 24),
//     );
//   }
// }