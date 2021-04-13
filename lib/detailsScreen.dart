import 'package:flutter/material.dart';
import 'package:horoscope/horoscope/ZodiacSigns.dart';
import 'package:online_horoscope/aboutScreen.dart';
import 'package:online_horoscope/homeScreen.dart';
import 'package:online_horoscope/privacyScreen.dart';

class DetailsPage extends StatelessWidget {

  String sunsign = "Sunsign",
      time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";
  String selectedZodiac = ZodiacSigns.CAPRICORN;




  DetailsPage(
      {@required this.sunsign,
        @required this.time,
        @required this.horoscope,
        @required this.selectedZodiac});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue.shade300,
          elevation: 1.0,
          centerTitle: true,
          title: Text('Online Horoscope',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 23.0,shadows: <Shadow>[
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0),
                        )
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 10.0,),
                        Text("Time : " + time,style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),),
                        Text("SunSign : " + sunsign,style: TextStyle(fontSize: 21.0,fontWeight: FontWeight.bold)),
                        if( sunsign == ZodiacSigns.AQUARIUS)
                          Container(
                            width: 150.0,
                            height:150.0,
                            decoration: BoxDecoration(

                                image: DecorationImage(
                                  image:AssetImage('images/l2.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.SAGITTARIUS)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l12.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.SCORPIO)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l11.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.LIBRA)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l10.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.CAPRICORN)
                          Container(
                            width: 150.0,
                            height:150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l1.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.CANCER)
                          Container(
                            width:150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l7.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.LEO)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l8.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.ARIES)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l4.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.GEMINI)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l6.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.PISCES)
                          Container(
                            width: 150.0,
                            height:150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l3.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.TAURUS)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l5.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),
                        if(sunsign == ZodiacSigns.VIRGO)
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:AssetImage('images/l9.png'),
                                  fit: BoxFit.cover,
                                )
                            ),
                          ),

                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(left: 12.0 , right: 5.0,top: 15.0),
                    width: MediaQuery.of(context).size.width,
                    //height: MediaQuery.of(context).size.height,


                    child:Text(horoscope,style: TextStyle(fontSize: 19.0,fontWeight: FontWeight.w500,color: Colors.black)),
                  )

                ],
              ),
            ),
          ),
        ),
        drawer:Drawer(
          child: ListView(
            children: [
              Container(
                height: 260.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25.0),
                      bottomLeft: Radius.circular(25.0),
                    ),
                    color: Colors.blue
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.0),
                      child: Container(
                        width: 160.0,
                        height: 160.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/lg.png',),
                              fit: BoxFit.cover,
                            )
                        ),
                      ),
                    ),
                    SizedBox(height: 10.0,),
                    Text('Online Horoscope',style: TextStyle(fontSize: 22.0,color: Colors.white,fontWeight: FontWeight.bold),),
                    Text('Powered by VM Mobile',style: TextStyle(fontSize: 20.0,color: Colors.white,fontWeight: FontWeight.bold),),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.perm_device_information_outlined),
                title: Text('About',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
                trailing: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>AboutHome()));
                  },
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text('Privacy & policy',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
                trailing: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (contetx)=>PrivacyHome()));
                  },
                ),
              ),
              Divider(),

              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home',style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.grey),),
                trailing: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                  },
                ),
              ),
              Divider(),
            ],
          ),
        )
    );
  }
}
