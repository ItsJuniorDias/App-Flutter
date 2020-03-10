import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {

  final String nome;
  final String email;

  DetailsPage(this.nome, this.email);
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar:AppBar(
        title: Text('Details')
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
          Image.network('https://avatars1.githubusercontent.com/u/50254416?s=460&v=4'),
          Container(
            margin: EdgeInsets.fromLTRB(10, 8, 10,0),
            child: Text(nome,
            style: TextStyle(fontWeight: FontWeight.bold), 
            ),
          ),
          Container(
          margin: EdgeInsets.fromLTRB(10, 8, 10, 8),
          child: Text(email, 
          style: TextStyle(color: Colors.grey)
          )
          ),
          Row(
            // mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(Icons.mail),
                  Text('Send')
                ],
              ),
              Column(children: [
                Icon(Icons.block),
                Text('Block')
              ],)
            ],
           )
        ],
        ),
        endDrawer: Drawer(),
        floatingActionButton: FloatingActionButton(),
      );
  }
}