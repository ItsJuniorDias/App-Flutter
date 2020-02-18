import 'package:flutter/material.dart';

void main() => runApp(new App()); 


class App extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    
    var texto = Text("Hello World!");

    var centro = Center(child: texto,);

    var appBar = AppBar(title: Text("App"));
 
    var scaffold = Scaffold(
      appBar: appBar,
      body: centro,
      );

    return MaterialApp(home: scaffold);
   }
}