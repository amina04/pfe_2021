 import 'package:flutter/material.dart';
 import 'package:flutter/cupertino.dart';
import 'package:pfe_2021/main.dart';
import 'package:pfe_2021/ui/list_med.dart';
class Searching_details  extends StatelessWidget {

  static String id = 'Detail_med';

  String clr_inf = med_clr.inf_30;
  String clr_sup = med_clr.sup_60;
  String clr_entre= med_clr.entre_30_60;
  String bil_inf = med_bil.inf_60;
  String bil_sup =med_bil.sup_60;
  String tgo_inf =med_tgo.inf_55;
  String tgo_sup =med_tgo.sup_55;

  @override
  Widget build(BuildContext context) {
    if(med_clr == null){
      print('vide');
      clr_inf =' ';
       clr_sup =' ';
       clr_entre=' ';
    }
    if(med_bil == null){
      bil_inf =' ';
      bil_sup =' ';

    }
    if(med_tgo == null){
      tgo_inf =' ';
     tgo_sup =' ';

    }
    return Scaffold(
      appBar: AppBar(title: Text('Détails de médicament'),backgroundColor: Colors.blue,
      actions: [
        IconButton(icon:Icon( Icons.keyboard_return_sharp), onPressed: (){
          Navigator.pushNamed(context, List_med.id);
        })
      ],),
body: ListView(
  padding: EdgeInsets.all(10.0),
  children: [
    Text('Clairance'),
    Text('Inferieure ou égale a 30 $clr_inf'),
    Text('supérieure ou egale a 60 $clr_sup'),
    Text('entre 30 et 60 $clr_entre'),
    Text('Bilirubine '),
    Text('inferieure a 60 $bil_inf'),
    Text('superieure a 60 $bil_sup'),
    Text('Tgo/Tgp'),
    Text('inferieur a 55 $tgo_inf'),
    Text('Superieure  a 55 $tgo_sup'),


  ],
),
    );
  }
}
