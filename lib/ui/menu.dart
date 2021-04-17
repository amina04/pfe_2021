 import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pfe_2021/ui/adopy_poso.dart';
import 'package:pfe_2021/ui/list_med.dart';

class Menu extends StatelessWidget {
  static String id = 'manu';
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;

    const colorizeColors = [
      Colors.deepOrange,
      Colors.orangeAccent,
      Colors.yellow,
      Colors.lightGreenAccent,
    ];

    const colorizeTextStyle = TextStyle(
        fontSize:50,

    );
    return SafeArea(
      child: Scaffold(


        body: ListView(

          children: [
            Stack(
        children: [ Container(width: size.width,height: size.width/1.2,
              decoration: BoxDecoration(image:DecorationImage(image: AssetImage("assest/courses.gif"),fit: BoxFit.cover,),
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(60) ,bottomLeft: Radius.circular(60) ,
                  ),boxShadow: [BoxShadow(
                    offset: Offset(1,0),
                    color: Colors.grey,blurRadius: 14,)]),),


            SizedBox(height: size.width/7,),
            Center(

              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Bienvenu',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),

                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            ),

Column(
  children: [
  GestureDetector(
  //la methode onTap sert a fait action listener
  onTap: (){
    Navigator.pushNamed(context, List_med.id);
      },
  child: Padding(
    padding: EdgeInsets.all(9.0),
    //je fais card au lieu container car il a une shadow
    child: Card(
      elevation: 10.0,
      margin: EdgeInsets.all(2.0),
      //pour radius
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Image.asset('images.png'),
          ),
          SizedBox(height: 10.0),
          Expanded(
            flex: 1,
            child: Text(
              'Liste des Medicaments',

              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    ),
  ),
),

    GestureDetector(
      //la methode onTap sert a fait action listener
      onTap: (){
        Navigator.pushNamed(context, adopt_poso.id);
      },
      child: Padding(
        padding: EdgeInsets.all(9.0),
        //je fais card au lieu container car il a une shadow
        child: Card(
          elevation: 10.0,
          margin: EdgeInsets.all(2.0),
          //pour radius
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset('images.png'),
              ),
              SizedBox(height: 10.0),
              Expanded(
                flex: 1,
                child: Text(
                  'Adoptation posologique',

                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  ],
)
//cm
          ],
        ),



      ],
      ),
    ),
    );

  }
}
