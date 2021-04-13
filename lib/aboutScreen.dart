import 'package:flutter/material.dart';
import 'package:online_horoscope/homeScreen.dart';
class AboutHome extends StatefulWidget {
  @override
  _AboutHomeState createState() => _AboutHomeState();
}

class _AboutHomeState extends State<AboutHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade300,
        elevation: 1.0,
        centerTitle: true,
        title: Text('About',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23.0,shadows: <Shadow>[
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
        ],),),
        actions: [
          IconButton(
            icon: Icon(Icons.home,color: Colors.white,size: 28.0,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 10.0,left: 10.0,right: 5.0),
          child: Text('With this app you can easily view horoscope results according to your zodiac sign.With this app you can view the horoscope results separately for Daily, Weekly, Monthly and Yearly.\n\nThis app will be special for you to know the day according to your zodiac sign before starting the days work.\n\nThis App is a Free App.',style: TextStyle(fontSize: 18.0),),
        ),
      ),
    );
  }
}
