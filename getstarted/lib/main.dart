import 'package:flutter/material.dart';

void main() => runApp(new App()); 


class App extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    
    var texto = Text("Hello World!");

    return MaterialApp(home: texto);
   }
}