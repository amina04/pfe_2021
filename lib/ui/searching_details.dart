 import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:pfe_2021/controller/functions.dart';
import 'package:pfe_2021/main.dart';
import 'package:pfe_2021/ui/list_med.dart';


class Searching_details  extends StatelessWidget {

  static String id = 'Detail_med';

  String clr_inf =remplir_clr_inf(med_clr);
  String clr_sup =remplir_clr_sup(med_clr);
  String clr_entre =remplir_clr_entre(med_clr);
  String bil_inf =remplir_bil_inf(med_bil);
  String bil_sup =remplir_bil_sup(med_bil);
  String tgo_inf =remplir_tgo_inf(med_tgo);
  String tgo_sup =remplir_tgo_sup(med_tgo);



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(title: Text('Détails de médicament'),backgroundColor: Colors.blue,
      ),
body: ListView(

  padding: EdgeInsets.all(10.0),
  children: [

    Text('La clairance rénale',textAlign: TextAlign.center,
    style: TextStyle(
      fontSize: size.width/20,

    ),),
    SizedBox(
     height: size.height/31,
    ),
    Text('Si elle est <= 30 ml/min : ',style: TextStyle(
      fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),

    Text(' $clr_inf',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/54,
    ),
    Text('Si elle est >= 60 ml/min : ',style: TextStyle(
      fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),
    Text(' $clr_sup',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/54,
    ),
    Text('Si elle est entre 30 et 60 ml/min : ',style: TextStyle(
      fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),
    Text(' $clr_entre',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('La bilirubine ',textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size.width/20,

      ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('Si elle est < 60 : ',style: TextStyle(
        fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),
    Text(' $bil_inf',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('Si elle est >= 60 :',style: TextStyle(
        fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),

    Text(' $bil_sup',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('Tgo/Tgp',textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size.width/20,

      ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('Si il est < 55 :',style: TextStyle(
        fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),
    Text(' $tgo_inf',style: TextStyle(
      fontSize: size.width/25,

    ),),
    SizedBox(
      height: size.height/31,
    ),
    Text('Si il est >= 55 : ',style: TextStyle(
        fontSize: size.width/25,
        fontWeight: FontWeight.bold
    ),),
    Text(' $tgo_sup',style: TextStyle(
      fontSize: size.width/25,

    ),),


  ],
),
    );
  }
}
