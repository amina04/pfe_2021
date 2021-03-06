import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/controller/adopt_poso_controller.dart';
import 'package:pfe_2021/controller/functions.dart';
import 'package:pfe_2021/model/database.dart';
import 'package:pfe_2021/model/model_medicament.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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

    //es val initiale de text field
    clairance_cntrl.text='0';
    bilurbine_cntrl.text='0';
    tgo_cntrl.text='0';
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
    Size size=MediaQuery.of(context).size;
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
                 labelText: 'Le poids',
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
    });
    med_search =
    await dbmanager.chercherMed(selected_item);

    med_clr = await dbmanager.getClairance(med_search.id_med);
    med_bil = await dbmanager.getBilirubine(med_search.id_med);
    med_tgo = await dbmanager.getTgo_tgp(med_search.id_med);
    });}})),

           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               controller: clairance_cntrl,
               decoration: InputDecoration(
                 labelText: 'La clairance r??nale',
//O

               ),),
           ),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               controller: bilurbine_cntrl,
               decoration: InputDecoration(
                 labelText: 'La bilirubine',


               ),),
           ),
           Padding(
             padding: const EdgeInsets.all(25.0),
             child: TextField(
               controller: tgo_cntrl,
               decoration: InputDecoration(
                 labelText: 'Tgo/Tgp',


               ),),
           ),
           FloatingActionButton(
             onPressed: (){

               String c=resultat_clairance(med_clr,clairance_cntrl.text);
               String b=resultat_bilirubine(med_bil,bilurbine_cntrl.text);
               String t=resultat_tgo(med_tgo,tgo_cntrl.text);

                 Alert(
                     context: context,
                     content: Column(
                       children: [
                         SizedBox(
                           height: size.height/50,

                         ),
                         Text('La clairance r??nale',style: TextStyle(
                           fontSize: size.width/22,color: Colors.grey.shade800,
                         ),),
                          Text('$c',style: TextStyle(
                            fontSize: size.width/22,
                          ),),
                         SizedBox(
                           height: size.height/50,
                         ),
                          Text('La bilrubine',style: TextStyle(
                            fontSize: size.width/22,color: Colors.grey.shade800,
                          ),),

                          Text('$b',style:TextStyle(
                            fontSize: size.width/22,
                          ),),
                         SizedBox(
                           height: size.height/50,
                         ),
                         Text('Tgo/Tgp',style: TextStyle(
                           fontSize: size.width/22,color: Colors.grey.shade800,
                         ),),

                          Text('$t',style:TextStyle(
                            fontSize: size.width/22,
                          ),),
                       ],
                     ),
                     title: "Dose ?? administrer",

                    )
                     .show();


             },
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
