import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class Start extends StatelessWidget {
  static String id = 'start_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Image(
                image: AssetImage('images/backgr-01.png'),
              ),
            ),
            flex: 3,
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Image(
                image: AssetImage('images/log-01.png'),
              ),
            ),
          ),

          Expanded(
            child: Text(
              'Bienvenu a notre application mobile',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,

                color: Colors.blue.shade800,
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
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
                      gradient: LinearGradient(
                        colors: [Colors.orange, Colors.yellow],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(70.0)),
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 200, minHeight: 30.0),
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
