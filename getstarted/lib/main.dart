import 'package:getstarted/details.dart';
import 'package:flutter/material.dart';

void main() => runApp(ContatoApp());

class ContatoApp extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: DetailsPage(), 
     );
   } 
}

class ItemContato extends StatelessWidget {

  final String nome;
  final String email;

  ItemContato(this.nome, this.email);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10,10,10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
           width: 54,
           height: 54,
           margin: EdgeInsets.only(right: 10),
           child: CircleAvatar(
             backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/50254416?s=460&v=4"),
           )
          ),
      
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(nome,
                style: TextStyle(color: Color.fromRGBO(255, 2, 1, .6) )
              ),
              SizedBox(height: 10,),
              Text(email,
               style: TextStyle(
                 fontWeight: FontWeight.bold
               ))
            ],
          )
        ],
      ),
    );
  }
}