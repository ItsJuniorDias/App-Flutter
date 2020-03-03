import 'package:flutter/material.dart';

void main() => runApp(ContatoApp());

class ContatoApp extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(),
         body: Container(
           child: Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text("A"),
               Text("B"),
             ],
           ),
         ),
       ) 
     );
   } 
}