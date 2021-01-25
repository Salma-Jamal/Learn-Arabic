import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/home/4.dart';
import 'package:ninjaid/home/6.dart';
import 'package:ninjaid/list.dart';


class home5 extends StatefulWidget {
  @override
  _familyState7 createState() => _familyState7();
}


class _familyState7 extends State<home5> {

  static AudioCache player = new AudioCache();
  var tcVisibility = false;

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
                      player.play("Mouse-Click.mp3");
                      Navigator.push
                        (
                        context,
                        MaterialPageRoute(builder: (context) =>  List()),
                      );
                    }),
              ],
            ),
            //SizedBox(height: 60,),
            Row(
              children: [
                SizedBox(width: 140.0),
                Container(
                  child: Text('أكمل الأحرف الناقصة:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),

            Row(
              children: [
                SizedBox(width: 117.0),

                Container(
                  child: Text('بخ',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),

                SizedBox(width: 5.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:60.0,
                  height: 2.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,
                      )
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  child: Text('الم',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),
                SizedBox(width: 5.0),

                Container(
                  child: Text('والدتي في',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),

                SizedBox(width: 5.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:60.0,
                  height: 2.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,
                      )
                  ),
                ),
                SizedBox(width: 5.0),
                Container(
                  child: Text('ساعد',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),


              ],
            ),

            SizedBox(height: 25.0),
            Row(
              children: [
                SizedBox(width: 65.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:270.0,
                  height: 230.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 3.1,
                          image: AssetImage('assets/kitchen.gif'),

                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.white,

                      ),

                      child:MaterialButton(

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        elevation: 8.0,

                      )
                  ),
                ),

              ],
            ),


            SizedBox(height: 20.0),
            Row(

              children: [

                SizedBox(width: 30.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("ت ، ط",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("correct.mp3");
                          Navigator.push
                            (
                            context,
                            MaterialPageRoute(builder: (context) => home6()),
                          );
                        },
                      )
                  ),
                ),

                SizedBox(width: 45.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("ط ، ت",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
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

            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 30.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("ت ، ت",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
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

                SizedBox(width: 45.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("ط ، ط",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          // borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
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

            SizedBox(height: 100.0),

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
                                MaterialPageRoute(builder: (context) => home4()),
                              );
                            }),
                        SizedBox(width: 310.0),
                        IconButton(
                            icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 30,),
                            tooltip: 'Forward',
                            onPressed: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => home6()),
                              );
                            })

                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 64.0,
                            color: Colors.red[200],
                            child: Center(
                              child:Text(
                                'إجابة خاطئة حاول مرة أخرى'
                                ,style: TextStyle(color: Colors.white, fontSize: 20 ,
                                  fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),
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