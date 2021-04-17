import 'package:flutter/material.dart';
import 'package:pfe_2021/ui/add_med.dart';
import 'package:pfe_2021/ui/adopy_poso.dart';
import 'package:pfe_2021/ui/list_med.dart';
import 'package:pfe_2021/ui/menu.dart';
import 'package:pfe_2021/ui/start.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Start(),

    routes: {
      Menu.id: (context) => Menu(),
      List_med.id: (context) => List_med(),
      Add_med.id: (context) => Add_med(),
      adopt_poso.id: (context) => adopt_poso(),


    },));
}
