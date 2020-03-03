import 'package:flutter/material.dart';

void main() => runApp(ContatoApp());

class ContatoApp extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(),
         body: Container(
           margin: EdgeInsets.fromLTRB(10, 10,10,10),
           child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                width: 54,
                height: 54,
                child: CircleAvatar(
                  backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/50254416?s=460&v=4"),
                )
               ),
           
               Column(
                 children: [
                   Text("Nome"),
                   Text("Email")
                 ],
               )
             ],
           ),
         ),
       ) 
     );
   } 
}