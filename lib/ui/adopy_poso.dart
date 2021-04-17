import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class adopt_poso extends StatefulWidget {
  static String id = 'adopt_poso';
  @override
  _adopt_posoState createState() => _adopt_posoState();
}

class _adopt_posoState extends State<adopt_poso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
              'Adoptation posologique'
          ),
        ),
        body:Column(
children: [


     Column(
      children: [

        TextField(
          decoration: InputDecoration(
            labelText: 'Clairance',
//O

          ),),
        TextField(
          decoration: InputDecoration(
            labelText: 'Bilirubine',


          ),),
        TextField(
          decoration: InputDecoration(
            labelText: 'Tgo/Tgp',


          ),),
        FloatingActionButton(
          child: new Icon(
            Icons.check,
            size: 40,
          ),
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        )
      ],

    ),


],
        )

    );
  }
}
