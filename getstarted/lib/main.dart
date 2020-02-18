import 'package:flutter/material.dart';

void main() => runApp(new App()); 


class App extends StatelessWidget {
   int contador = 0; 

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green,
           title: Text("App")
         ),
        body: Center(
          child: MeuTexto("Fatec"),
          
          
        ),
       )
     );
   }
}

class MeuTexto extends StatelessWidget{
  String texto;

  MeuTexto(this.texto);
   
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
     this.texto,
     style: TextStyle(
            fontSize: 30
          ),
    );
  }

}