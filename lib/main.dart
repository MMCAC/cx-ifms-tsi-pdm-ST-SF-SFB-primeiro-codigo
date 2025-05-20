import 'package:flutter/material.dart';
import 'package:primeiro_codigo/mainSF.dart';
import 'package:primeiro_codigo/mainSFB.dart';

void main(){
  // runApp(MeuApp());
  runApp(MeuAppSF());
  // runApp(MeuAppSFB());
}

class MeuApp extends StatelessWidget{
  int count = 0;

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
      color: Colors.blueAccent,
      foregroundColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Colors.indigo,
    ),
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
  return  AppBar(
    title: Text("Meu App"),
  );
  }

  Widget buildBody(){
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Text("Olá Mundo! ${count}", style: TextStyle(fontSize: 24)),
      ],
    ),
  );
  }

  FloatingActionButton buildFAB(){
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: acaoBotao
    );
  }

  acaoBotao(){
    count++;
    print(count);
  }


}







