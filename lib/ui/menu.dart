 import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/ui/adopy_poso.dart';
import 'package:pfe_2021/ui/list_med.dart';
import 'package:pfe_2021/widget_specifique/button_menu.dart';

class Menu extends StatelessWidget {
  //une variable n3ayttolo f main routes bah ykhalina za3ma ndiro trig mn screen l screen
  static String id = 'menu';
  @override
  Widget build(BuildContext context) {
    //tajbed size mn tel bah ki ndeclariw size ta3 7adja tet3adl 3la 7ssab kol tel
    Size size=MediaQuery.of(context).size;


    return SafeArea(

      child: Scaffold(

//ndiroha bah f screen na9adro nhabto
        body: ListView(

          children: [
            Stack(
        children: [ Container(width: size.width,height: size.width/1.2,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage("images/bg2-01.jpg"),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60) ,bottomLeft: Radius.circular(60) ,
                  ),),),

]),

            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 60, vertical: 0),
              child: button_home(
                //une fonction ndiro fiha win 7abin nro7o
                ontap: () {
                  Navigator.pushNamed(context, List_med.id);
                },

                nom_image: 'images/add_med_icon-01.png',
                 label: 'Liste des médicaments'
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal:60, vertical: 0),
              child: button_home(
                //une fonction ndiro fiha win 7abin nro7o
                  ontap: () {
                    Navigator.pushNamed(context, adopt_poso.id);
                  },

                  nom_image: 'images/poso_icon-01.png',
                  label: 'Adoptation posologique'
              ),
            ),




            ],
          ),
        ),





    );

  }
}
