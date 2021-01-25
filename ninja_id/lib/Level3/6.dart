import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level3/7.dart';

class three6 extends StatefulWidget {
  @override
  _three6State createState() => _three6State();
}


class _three6State extends State<three6> {

  static AudioCache player = new AudioCache();
  var tcVisibility = false;
  var tcVisibility2 = false;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(

          elevation: 0,
          backgroundColor: Colors.blue[300],
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.close,size: 40,color: Colors.black,),
            onPressed: () {
              Navigator.push
                (
                context,
                MaterialPageRoute(builder: (context) =>home2()),
              );
            },
          ),
        ),
        backgroundColor: Colors.white,
        body: Column(

          children: [
            Row(
                children:[
                  Container(
                    color: Colors.blue[300],
                    width: 411.4,
                    height: 40,
                    child: Row(
                      children: [
                        SizedBox(width: 50,),
                        Text('اضغط على الصورة وأختر اسم الشكل الصحيح:',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                      ],
                    ),

                  ),
                ]
            ),
            SizedBox(height: 10.0),


            SizedBox(height: 30.0),
            Row(
              children: [
                SizedBox(width: 45.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:300.0,
                  height: 160.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 4.0,
                          image: AssetImage('assets/triangle.gif'),

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,

                      ),

                      child:MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[100],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.white,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("Triangle.m4a");

                        },
                      )
                  ),
                )
              ],
            ),
            //  SizedBox(height: 5.0),


            SizedBox(height: 30.0),

            Row(
              children: [
                SizedBox(width:80),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:100.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('مريع',
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,
                        onPressed: () {
                          player.play("error.mp3");
                          setState(() {
                            tcVisibility = true;
                          });

                          Future.delayed(Duration(seconds: 2)).then((_){
                            setState(() {
                              tcVisibility = false;
                            });

                          }

                          );


                        },
                      )
                  ),
                ),
                SizedBox(width:40),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:100.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('مستطيل',
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,
                        onPressed: () {
                          player.play("error.mp3");
                          setState(() {
                            tcVisibility = true;
                          });

                          Future.delayed(Duration(seconds: 2)).then((_){
                            setState(() {
                              tcVisibility = false;
                            });

                          }

                          );


                        },
                      )
                  ),
                ),
              ],
            ),

            SizedBox(height:40),
            Row(
              children: [
                SizedBox(width:80),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:100.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('دائرة',
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,
                        onPressed: () {
                          player.play("error.mp3");
                          setState(() {
                            tcVisibility = true;
                          });

                          Future.delayed(Duration(seconds: 2)).then((_){
                            setState(() {
                              tcVisibility = false;
                            });

                          }

                          );


                        },
                      )
                  ),
                ),
                SizedBox(width:40),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:100.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('مثلث',
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w400)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("correct2.mp3");
                          setState(() {
                            tcVisibility2 = true;
                          });

                          Future.delayed(Duration(seconds: 2)).then((_){
                            setState(() {
                              tcVisibility2 = false;
                            });

                          });

                          Future.delayed(Duration(seconds: 2)).then((_){
                            Navigator.push
                              (
                              context,
                              MaterialPageRoute(builder: (context) => three8()),
                            );});


                        },
                      )
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Stack(
              children: [
                Visibility(
                  visible: tcVisibility,

                  child:Image.asset('assets/sad.gif',width: 220,height: 120,),

                ),
                Visibility(
                  visible: tcVisibility2,

                  child:Image.asset('assets/happyface.gif',width: 200,height: 110,),

                )
              ],
            ),

            // SizedBox(height: 90,),


          ],
        )
    );




  }}