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