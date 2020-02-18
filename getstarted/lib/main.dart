import 'package:flutter/material.dart';

void main() => runApp(new App()); 


class App extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           backgroundColor: Colors.green,
           title: Text("App")
         ),
        body: Center(
          child: Text("Hello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello WorldHello World",
           maxLines: 1,
           overflow: TextOverflow.ellipsis,
          )
        ),
       )
     );
   }
}