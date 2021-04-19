import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/model/database.dart';
import 'package:pfe_2021/model/model_medicament.dart';

import '../main.dart';
class adopt_poso extends StatefulWidget {
  static String id = 'adopt_poso';
  @override
  _adopt_posoState createState() => _adopt_posoState();
}

class _adopt_posoState extends State<adopt_poso> {
  var dbmanager = new Dbpfe();

  @override
  List<DropdownMenuItem> getDropDownItem() {
    List<DropdownMenuItem<String>> dropdownitems = [];
    for (int i = 0; i < meds.length; i++) {
      //  extrait le nom de chaque objet comme dans list screen

      String currency = Medicament.fromMap(meds[i]).nom_med;
      var newItem = DropdownMenuItem(
        child: Text(currency),
        value: currency,
      );
      dropdownitems.add(newItem);
    }
    return dropdownitems;
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text(
              'Adoptation posologique'
          ),
        ),
        body:ListView(
         children: [

           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Poids',
//O

               ),),
           ),
Padding(padding:const EdgeInsets.all(25.0),


    child:FutureBuilder(
        future: dbmanager.getAllMed(),
    builder: (context, snapshot) {
    if (snapshot.hasData) {
    meds = snapshot.data;
    return DropdownButton<String>(
    items: getDropDownItem(),
    value: selected_item,
    onChanged: (value)async {
    setState(() {
    selected_item = value;
    print(' selected item $selected_item');

    });});}})),

           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Clairance',
//O

               ),),
           ),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Bilirubine',


               ),),
           ),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               decoration: InputDecoration(
                 labelText: 'Tgo/Tgp',


               ),),
           ),
           FloatingActionButton(
             child: new Icon(
               Icons.check,
               size: 40,
             ),
             backgroundColor: Colors.pink,
             foregroundColor: Colors.white,
           )
         ],

    )

    );
  }
}
