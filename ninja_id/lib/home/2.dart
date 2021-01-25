import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/home/3.dart';
import 'package:ninjaid/home/1.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/culture/levelup.dart';
import 'package:ninjaid/globals.dart' as globals;

class home2 extends StatefulWidget {
  @override
  _home2State createState() => _home2State();
}


class _home2State extends State<home2> {
  var tcVisibility = false;
  static AudioCache player = new AudioCache();


  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(

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
                        MaterialPageRoute(builder: (context) =>  List()),
                      );
                    }),
              ],
            ),



            SizedBox(height: 15.0),
            Row(
              children: [
                SizedBox(width: 40.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:320.0,
                  height: 250.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 1.0,
                          image: AssetImage('assets/knife.gif'),

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,

                      ),

                      child:MaterialButton(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        elevation: 8.0,

                      )
                  ),
                ),

              ],
            ),

            SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(width: 200.0),
                Container(
                  child: Text("نستخدم السكين في  ______ ",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),


            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 120.0),
                ButtonTheme(

                  padding: EdgeInsets.all(8.0),
                  minWidth:160.0,
                  height: 30.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),

                      child:MaterialButton(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        child:Text('القطيع'
                            ,  style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w300)
                        ),
                        textColor: Colors.black,
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

                Row(

                  children: [
                    SizedBox(width:120.0 ),
                    ButtonTheme(
                      padding: EdgeInsets.all(8.0),
                      minWidth:160.0,
                      height: 30.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),

                          child:MaterialButton(

                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[200],width: 2.0),
                            ),
                            padding: EdgeInsets.all(8.0),
                            child:Text('التقطيع'
                                ,  style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w300)
                            ),
                            textColor: Colors.black,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: () {
                              player.play("correct.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => home3()),
                              );

                            },
                          )
                      ),
                    ),

                  ],
                ),

            Row(

              children: [
                SizedBox(width:120.0 ),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:160.0,
                  height: 30.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),

                      child:MaterialButton(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        child:Text('التقتيع'
                            ,  style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w300)
                        ),
                        textColor: Colors.black,
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

            SizedBox(height: 80.0),


            Row(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        SizedBox(width: 5.0),
                        IconButton(
                            icon: Icon(Icons.arrow_back,color: Colors.grey,size: 30,),
                            tooltip: 'Back',
                            onPressed: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => home1()),
                              );
                            }),
                        SizedBox(width: 300.0),
                        IconButton(
                            icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 30,),
                            tooltip: 'Forward',
                            onPressed: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => home3()),
                              );
                            })
                        ,
                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 63.0,
                            color: Colors.red[200],
                            child: Center(
                              child:Text(
                                'إجابة خاطئة حاول مرة أخرى'
                                ,style: TextStyle(color: Colors.white, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),
                              ),
                            )
                        ))



                  ],
                )
              ],
            ),


          ],
        )
    );




  }}