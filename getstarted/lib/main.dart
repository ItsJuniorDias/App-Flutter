import 'details.dart';
import 'package:flutter/material.dart';


void main() => runApp(ContatoApp());

class ContatoApp extends StatelessWidget {

  @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Center(
             child: Text("Contatos")
             )
            ),
             body: ListView(
           scrollDirection: Axis.vertical,    
           children: [
             ItemContato("Alexandre", "juniordias_live"),
          
           ],
         ),
       ) 
     );
   } 
}

class ItemContato extends StatelessWidget {

  final String nome;
  final String email;

  ItemContato(this.nome, this.email);

  BuildContext _context;

  void openDetails() {
    var routesDetails = MaterialPageRoute(builder: (BuildContext context) => DetailsPage());
    Navigator.push(_context,routesDetails);
  }

  @override
  Widget build(BuildContext context) {

    _context = context;
    
    return GestureDetector(
        onTap: openDetails,
        child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
                  child: Text(nome,
                    style: TextStyle(color: Color.fromRGBO(255, 2, 1, .6) )
                  ),
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
      ),
    );
  }
}