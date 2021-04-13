import 'package:flutter/material.dart';
import 'dart:async';
import 'package:online_horoscope/homeScreen.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {

    super.initState();
    displaySplash();
  }

  displaySplash(){

    Timer(Duration(seconds: 4), () async{



      Route route = MaterialPageRoute(builder: (_) => HomePage());
      Navigator.pushReplacement(context, route);


    });

  }





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [

          Container(

            decoration:   BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/sp.jpg'),
                    fit: BoxFit.cover
                )

            ),

          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [

              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [

                      Padding(
                        padding: EdgeInsets.only(top: 70.0),

                      ),
                      Text("Online Horoscope",style: TextStyle(color: Colors.white,fontSize: 35.0,fontWeight: FontWeight.bold ,fontFamily:'gfont',shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black87,
                        ),
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 8.0,
                          color: Colors.black87,
                        ),
                      ],
                      ),
                      ),
                    ],
                  ),
                ),

              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [




                    Text("Powered by",style: TextStyle(color: Colors.yellow.shade600,fontSize: 30.0,fontWeight: FontWeight.bold,
                    ),
                    ),



                    Text("VM Mobile",style: TextStyle(color: Colors.yellow.shade500,fontSize: 25.0,fontWeight: FontWeight.bold,

                    ),
                    ),


                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}