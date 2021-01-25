import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninjaid/Family/1.dart';
import 'package:ninjaid/School/1.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/culture/1.dart';
import 'package:ninjaid/home/1.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/travel/1.dart';
import 'globals.dart' as globals;

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  static AudioCache player = new AudioCache();

  void goToPage(Widget route) {
      Navigator.push
          (
          context,
          MaterialPageRoute(builder: (context) =>route),
        );

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(

        child: Scaffold(
          backgroundColor: Colors.white,
          body:Column(

            children: [
              SizedBox(height: 10.0),
              Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.close,color: Colors.grey,size: 30,),
                      tooltip: 'Close',
                      onPressed: () {
                        Navigator.push
                          (
                          context,
                          MaterialPageRoute(builder: (context) =>  home2()),
                        );
                      }),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  SizedBox(width: 185.0),
                  Container(
                  child: Text('تعلم اللغة العربية',
                       textDirection: TextDirection.rtl,
                       textAlign: TextAlign.justify,
                       style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                  )
                ],
              ),
              SizedBox(height: 40.0),
              Row(
                children: [
                  SizedBox(width: 10.0),
                  Image.asset('assets/sch.png',height: 50,
                    width: 50,),
                  SizedBox(width: 10.0),
                  ButtonTheme(
                    padding: EdgeInsets.all(8.0),
                    minWidth:310.0,
                    height: 50.0,
                    child: Container(

                        padding: EdgeInsets.all(8.0),
                        child:MaterialButton(

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                          ),
                          child: Text('الدراسة'
                              ,style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                         // child:Image.asset('assets/apple.png',height: 50,
                           // width: 200),
                          padding: EdgeInsets.all(8.0),
                          textColor: Colors.black,
                          color: Colors.white,
                          splashColor: Colors.blue,
                          elevation: 8.0,
                          onPressed: () {
                            player.play("Mouse-Click.mp3");
                            Navigator.push
                              (
                              context,
                              MaterialPageRoute(builder: (context) => school()),
                            );
                          },
                        )
                    ),
                  ),

                  //SizedBox(width: 50.0),

            ],
          ),
              SizedBox(height: 10.0),

              Row(
                children: [
                //  SizedBox(width: 25.0),
                  SizedBox(width: 10.0),
                  Image.asset('assets/fam.png',height: 50,
                    width: 50,),
                  SizedBox(width: 10.0),
                  ButtonTheme(
                    padding: EdgeInsets.all(8.0),
                    minWidth:310.0,
                    height: 50.0,
                    child: Container(

                        padding: EdgeInsets.all(8.0),
                        child:MaterialButton(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey[100],width: 2.0),
                          ),
                          child: Text('العائلة والأصدقاء'
                              ,style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                          // child:Image.asset('assets/apple.png',height: 50,
                          // width: 200),
                          padding: EdgeInsets.all(8.0),
                          textColor: Colors.black,
                          color: Colors.white,
                          splashColor: Colors.blue,
                          elevation: 8.0,
                          onPressed: globals.flag1? null : () => goToPage(family()),
                              )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0),

              Row(
                children: [
                  //SizedBox(width: 25.0),
                  SizedBox(width: 10.0),
                  Image.asset('assets/homepage.png',height: 50,
                    width: 50,),
                  SizedBox(width: 10.0),
                  ButtonTheme(
                    padding: EdgeInsets.all(8.0),
                    minWidth:310.0,
                    height: 50.0,
                    child: Container(

                        padding: EdgeInsets.all(8.0),
                        child:MaterialButton(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey[100],width: 2.0),
                          ),
                          child: Text('المنزل'
                              ,style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                          // child:Image.asset('assets/apple.png',height: 50,
                          // width: 200),
                          padding: EdgeInsets.all(8.0),
                          textColor: Colors.black,
                          color: Colors.white,
                          splashColor: Colors.blue,
                          elevation: 8.0,
                          onPressed: globals.flag2? null : () => goToPage(home1())
                          ,
                        )
                    ),
                  ),
                ],
              ),

              SizedBox(height: 10.0),
              Row(
                children: [
                //  SizedBox(width: 25.0),
                  SizedBox(width: 10.0),
                  Image.asset('assets/air.png',height: 50,
                    width: 50,),
                  SizedBox(width: 10.0),
                  ButtonTheme(
                    padding: EdgeInsets.all(8.0),
                    minWidth:310.0,
                    height: 50.0,
                    child: Container(

                        padding: EdgeInsets.all(8.0),
                        child:MaterialButton(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey[100],width: 2.0),
                          ),
                          child: Text('السفر'
                              ,style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                          // child:Image.asset('assets/apple.png',height: 50,
                          // width: 200),
                          padding: EdgeInsets.all(8.0),
                          textColor: Colors.black,
                          color: Colors.white,
                          splashColor: Colors.blue,
                          elevation: 8.0,
                          onPressed:globals.flag3? null : () => goToPage(travel()),
                        )
                    ),
                  ),

                  //SizedBox(width: 50.0),

                ],
              ),
              SizedBox(height: 10.0),
              Row(
                children: [
                  //SizedBox(width: 25.0),
                  SizedBox(width: 10.0),
                  Image.asset('assets/paint.jpg',height: 50,
                    width: 50,),
                  SizedBox(width: 10.0),
                  ButtonTheme(
                    padding: EdgeInsets.all(8.0),
                    minWidth:310.0,
                    height: 50.0,
                    child: Container(

                        padding: EdgeInsets.all(8.0),
                        child:MaterialButton(

                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.grey[100],width: 2.0),
                          ),
                          child: Text('ثقافه'
                              ,style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                          // child:Image.asset('assets/apple.png',height: 50,
                          // width: 200),
                          padding: EdgeInsets.all(8.0),
                          textColor: Colors.black,
                          color: Colors.white,
                          splashColor: Colors.blue,
                          elevation: 8.0,
                          onPressed:globals.flag4? null : () => goToPage(culture1()),
                        )
                    ),
                  ),



                ],
              ),
  ],
        )),
      ),




    );




  }

}

