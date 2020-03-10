import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
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
           SizedBox(width: 8,),
          Image.network('https://avatars1.githubusercontent.com/u/50254416?s=460&v=4'),
          Text('Alexandre',
          style: TextStyle(fontWeight: FontWeight.bold), 
           
          ),
          Text('juniordias_@live.com', style: TextStyle(color: Colors.grey)),
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