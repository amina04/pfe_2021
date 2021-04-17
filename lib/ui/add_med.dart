import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Add_med extends StatelessWidget {
  static String id = 'addMed';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          'Ajouter Medicament'
        ),
      ),
      body: Column(
        children: [
          TextField(
           decoration: InputDecoration(
             labelText: 'nom médicament',


           ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.blue),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text('Clairance'),
                ),
    TextField(
    decoration: InputDecoration(
    labelText: '<= 30',


    ),),
    TextField(
    decoration: InputDecoration(
    labelText: '>= 60',


    ),),
    TextField(
    decoration: InputDecoration(
    labelText: 'entre 30 et 60',


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

          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.blue),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text('Bilirubine'),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: '<= 60',


                  ),),
                TextField(
                  decoration: InputDecoration(
                    labelText: '>= 60',


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
          )
          ,
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.blue),
              borderRadius: BorderRadius.all(
                  Radius.circular(5.0) //         <--- border radius here
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text('Tgo/Tgp'),
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: '< 55',


                  ),),
                TextField(
                  decoration: InputDecoration(
                    labelText: '>= 55',


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
          ),
        ],
      ),
    );
  }
}
