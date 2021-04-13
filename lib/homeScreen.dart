import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:horoscope/horoscope_flutter.dart';
import 'package:online_horoscope/detailsScreen.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String sunsign = "Sunsign",
      time = "Time of Horoscope",
      horoscope = "Click on Button Above to get Horoscope";

  String selectedZodiac = ZodiacSigns.CAPRICORN;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: DecorationImage(
                image: AssetImage('images/bg.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                ColorFilter.mode(Colors.black.withOpacity(0.6),
                    BlendMode.dstATop),
              )
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0,),
              Text('Select Your Sun Sign',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0,color: Colors.white,shadows: <Shadow>[
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

              SizedBox(height: 10.0,),
              Container(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                width: 180.0,
                height: 40.0,
                child:_normalDown(),
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(),
                ),
              ),
              SizedBox(height: 25.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue,

                    ),

                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Get Daily Horoscope',
                                  style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                    ,shadows: <Shadow>[
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
                                  ))
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Horoscope.getDailyHoroscope(selectedZodiac).then((val) {
                              if (val != null) {
                                setState(() {
                                  sunsign = val.sunsign;
                                  time = val.date;
                                  horoscope = val.horoscope;
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage(

                                    sunsign: sunsign,
                                    time: time,
                                    horoscope: horoscope,

                                  )));
                                });
                              }
                            });
                          },

                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,

                    ),

                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Get Weekly Horoscope',
                                  style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                    ,shadows: <Shadow>[
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
                                  ))
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed:() {

                            Horoscope.getWeeklyHoroscope(selectedZodiac).then((val) {
                              if (val != null) {
                                setState(() {
                                  time = val.week;
                                  horoscope = val.horoscope;
                                  sunsign = val.sunsign;
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage(

                                    sunsign: sunsign,
                                    time: time,
                                    horoscope: horoscope,

                                  )));

                                });
                              }
                            });
                          },

                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,

                    ),

                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Get Monthly Horoscope',
                                  style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                    ,shadows: <Shadow>[
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
                                  ))
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Horoscope.getMonthlyHoroscope(selectedZodiac).then((val) {
                              if (val != null) {
                                setState(() {
                                  time = val.month;
                                  horoscope = val.horoscope;
                                  sunsign = val.sunsign;
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage(

                                    sunsign: sunsign,
                                    time: time,
                                    horoscope: horoscope,

                                  )));
                                });
                              }
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 12.0,),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 0.0, horizontal: 20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.pink,

                    ),

                    child: Row(
                      children: <Widget>[
                        SizedBox(width: 20.0,),
                        Expanded(

                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Get Yearly Horoscope',
                                  style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold
                                    ,shadows: <Shadow>[
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
                                  ))
                            ],
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_forward_ios),
                          onPressed: () {
                            Horoscope.getYearlyHoroscope(selectedZodiac).then((val) {
                              if (val != null) {
                                setState(() {
                                  time = val.year.toString();
                                  horoscope = val.horoscope;
                                  sunsign = val.sunsign;
                                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsPage(

                                    sunsign: sunsign,
                                    time: time,
                                    horoscope: horoscope,

                                  )));
                                });
                              }
                            });
                          },

                        )
                      ],
                    ),
                  ),
                ),
              ),

            ],






          ),
        ),
      ),

    );

  }

  DropdownButton _normalDown() => DropdownButton<String>(
    dropdownColor: Colors.yellowAccent,
    iconSize: 30.0,

    items: [
      DropdownMenuItem(
        value: ZodiacSigns.AQUARIUS,
        child: Text(
          ZodiacSigns.AQUARIUS,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.SAGITTARIUS,
        child: Text(
          ZodiacSigns.SAGITTARIUS,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.SCORPIO,
        child: Text(
          ZodiacSigns.SCORPIO,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.LIBRA,
        child: Text(
          ZodiacSigns.LIBRA,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.CAPRICORN,
        child: Text(
          ZodiacSigns.CAPRICORN,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.CANCER,
        child: Text(
          ZodiacSigns.CANCER,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.LEO,
        child: Text(
          ZodiacSigns.LEO,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.ARIES,
        child: Text(
          ZodiacSigns.ARIES,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.GEMINI,
        child: Text(
          ZodiacSigns.GEMINI,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.PISCES,
        child: Text(
          ZodiacSigns.PISCES,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.TAURUS,
        child: Text(
          ZodiacSigns.TAURUS,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
      DropdownMenuItem(
        value: ZodiacSigns.VIRGO,
        child: Text(
          ZodiacSigns.VIRGO,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
        ),
      ),
    ],
    onChanged: (value) {
      setState(() {
        selectedZodiac = value;
      });
    },
    value: selectedZodiac,
  );
}


