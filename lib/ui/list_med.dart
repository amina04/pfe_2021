import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/model/database.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../main.dart';
import 'add_med.dart';
class List_med extends StatefulWidget {
  static String id = 'listMed';

  @override
  _List_medState createState() => _List_medState();
}

class _List_medState extends State<List_med> {
  var dbmanager = new Dbpfe();
  final chercher_med_ctrl = TextEditingController();
  @override
  Icon cusIcon = Icon(Icons.search);
  Widget cusSearchBar = Text(
    'Liste des médicaments',

  );

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              setState(() {
                if (this.cusIcon.icon == Icons.search) {
                  this.cusIcon = Icon(Icons.cancel);
                  this.cusSearchBar = TextField(
                    controller: chercher_med_ctrl,
                    decoration:
                    InputDecoration(hintText: 'Chercher un médicament'),
                    textInputAction: TextInputAction.search,
                    onSubmitted: (term) async {
                      //si le med n existe pas on affiche ce alert message
                      med_search =
                      await dbmanager.chercherMed(chercher_med_ctrl.text);

                      if (med_search == null) {
                        Alert(
                            context: context,
                            title: "Ce médicament n'existe pas",
                            desc: "vous devez le l'ajouter d'abord.")
                            .show();
                      } else {

                      }
                    },
                    style: TextStyle(color: Colors.white, fontSize: 16.0),
                  );
                } else {
                  this.cusIcon = Icon(Icons.search);
                  this.cusSearchBar = Text(
                    'Liste des médicaments',

                  );
                }
              });
            },
            icon: cusIcon,
          ),
        ],
        centerTitle: true,
        title: cusSearchBar,

      ),
      //pour reecrier la list view aprées chaque ajout

      body: FutureBuilder(
        future: dbmanager.getAllMed(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            join_med = snapshot.data;
            return _buildlistview();
          }
          return new CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, Add_med.id);
        },
        child: new Icon(
          Icons.add,
          size: 40,
        ),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
    );
  }
}
  //la methode buildlist view
  ListView _buildlistview() {
    return ListView.builder(
        itemCount: join_med == null ? 0 : join_med.length,
        itemBuilder: (BuildContext context, int position) {
          return Card(
            child: ListTile(
          //   title: Text(
              //  'médicament : ${join_med.fromMap(join_med[position]).nom}',

          //    ),
              //un sous titre


            ),
          );
        });
  }