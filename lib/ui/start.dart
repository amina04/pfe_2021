import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Start extends StatelessWidget {
  static String id = 'start_screen';
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('images/bg1-01.png'),
              ),
            ),
            flex: 3,
          ),


          Expanded(
            child: Text(
              'Bienvenu a notre application mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: size.height/42,

                color: Colors.blue.shade800,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              height: 30.0,
              margin: EdgeInsets.only(bottom: 30.0),
              // ignore: deprecated_member_use
              child: RaisedButton(
                onPressed: () {
                  Navigator.pushNamed(context, Menu.id);
                },
                padding: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0)),
                child: Ink(
                  decoration: BoxDecoration(
                    color: Colors.pink,

                      borderRadius: BorderRadius.circular(70.0)),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: size.width/2, minHeight: size.height/40),
                    alignment: Alignment.center,
                    child: Text(
                      "Commencer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,

                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
