import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/controller/add_med_controller.dart';
import 'package:pfe_2021/model/database.dart';
import 'package:pfe_2021/model/model_bilirubine.dart';
import 'package:pfe_2021/model/model_clairance.dart';
import 'package:pfe_2021/model/model_medicament.dart';
import 'package:pfe_2021/model/model_tgo_tgp.dart';
class Add_med extends StatelessWidget {
  static String id = 'addMed';
  var dbmanager = new Dbpfe();
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    bool insert_before=false;
    int id_med;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Ajouter un médicament'
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 15.0),
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              //controller bah nhazo wach aw maktob f text field
              controller: nom_med_ctrl,
             decoration: InputDecoration(
               labelText: 'nom de médicament',


             ),

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Text('La clairance rénale',style: TextStyle(
                    fontSize: size.width/21,

                  ),),
                ),
    TextField(
                controller:clr_inf30_ctrl,
    decoration: InputDecoration(
    labelText: '<= 30 ml/min',


    ),),
    TextField(
    controller:clr_sup60_ctrl,
    decoration: InputDecoration(
    labelText: '>= 60 ml/min',


    ),),
    TextField(
      controller:clr_entre_30_60_ctrl,
    decoration: InputDecoration(
    labelText: 'entre 30 ml/min et 60 ml/min',


    ),),
              SizedBox(
                height: size.height/20,
              ),
            //  FloatingActionButton(
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "sauvegarder",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: size.width/24,
                    ),
                  ),
                onPressed: ()async{

                  //je fais ce texte pour insire le nom de med 1 seule fois car ici je fais pls buton pour insiréé chaque bilan seule
                  if(insert_before==false){
                    // medicament le nom n'est pas  insiréé
                    id_med = await dbmanager.insertMedicament(new Medicament(
                      nom_med_ctrl.text,
                    ));
                    print("id medicament $id_med");
                    insert_before =true;
                  }
                  //insirérer clairance
                int id_clr=  await dbmanager.insertClairance(new Clairance(
                    clr_inf30_ctrl.text,clr_sup60_ctrl.text,clr_entre_30_60_ctrl.text,id_med
                  ));

                },

              )
              ],

            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Text('La bilirubine',
    style: TextStyle(
    fontSize: size.width/21)),
                ),
                TextField(
                  controller:bil_inf60_ctrl,
                  decoration: InputDecoration(
                    labelText: '< 60 ml/min',


                  ),),
                TextField(
                  controller:bil_sup60_ctrl,
                  decoration: InputDecoration(
                    labelText: '>= 60 ml/min',


                  ),),
                SizedBox(
                  height: size.height/20,
                ),
               // FloatingActionButton(
                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "sauvegarder",
                    style: TextStyle(
                      color: Colors.white
                          ,  fontSize: size.width/24,
                    ),

                  ),
                  onPressed: ()async{
                    if(insert_before==false){
                      // medicament le nom n'est pas  insiréé
                      id_med = await dbmanager.insertMedicament(new Medicament(
                          nom_med_ctrl.text,
                      ));

                      insert_before =true;
                    }


                  int id_bil=  await dbmanager.insertBilirubine(new Bilirubine(
                        bil_inf60_ctrl.text,bil_sup60_ctrl.text,id_med
                    ));

                  },

                )
              ],
            ),
          )
          ,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Text('Tgo/Tgp'  ,style: TextStyle(
    fontSize: size.width/21)),
                ),
                TextField(
                  controller:tgo_inf55_ctrl,
                  decoration: InputDecoration(
                    labelText: '< 55 ml/min',


                  ),),
                TextField(
                  controller:tgo_sup55_ctrl,
                  decoration: InputDecoration(
                    labelText: '>= 55 ml/min',


                  ),),
                SizedBox(
                  height: size.height/20,
                ),
             //   FloatingActionButton(
                RaisedButton(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
    color: Colors.lightBlueAccent,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
    child: Text(
    "sauvegarder",
      style: TextStyle(
          color: Colors.white,
        fontSize: size.width/24,
      ),


    ),
                  onPressed: ()async{
                    if(insert_before==false){
                      // medicament le nom n'est pas  insiréé
                      id_med = await dbmanager.insertMedicament(new Medicament(

                        nom_med_ctrl.text,
                      ));

                      insert_before =true;
                    }
                  int id_tg = await dbmanager.insertTgo_tgpe(new Tgo_tgp(
                        tgo_inf55_ctrl.text,tgo_sup55_ctrl.text,id_med
                    ));

                  },
                ),
                SizedBox(
                  height: size.height/20,
                ),

                RaisedButton(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15.0),
                  color: Colors.lightBlueAccent,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    "reset",
                    style: TextStyle(
                        color: Colors.white,
                      fontSize: size.width/24,
                    ),
                  ),
                  onPressed: (){
                    //vider le contient de text fields
                    nom_med_ctrl.clear();
                    clr_inf30_ctrl.clear();
                    clr_sup60_ctrl.clear();
                    clr_entre_30_60_ctrl.clear();
                    bil_inf60_ctrl.clear();
                    bil_sup60_ctrl.clear();
                    tgo_inf55_ctrl.clear();
                    tgo_sup55_ctrl.clear();
                  },

                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
