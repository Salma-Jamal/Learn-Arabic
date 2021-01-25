import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/travel/6.dart';
import 'package:ninjaid/travel/final.dart';
import 'package:ninjaid/globals.dart' as globals;

class travel6 extends StatefulWidget {
  @override
  _travel6State createState() => _travel6State();
}


class _travel6State extends State<travel6> {

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
                SizedBox(width: 150.0),
                Container(
                  child: Text('أكمل الحرف الناقص:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),

            SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(width: 115.0),

                Container(
                  child: Text('الطائرة في موعدها المحدد',
                      style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),

                SizedBox(width: 2.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:50.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('  ',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w300)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        //splashColor: Colors.red[800],

                        elevation: 8.0,

                      )
                  ),

                ),
                SizedBox(width: 2.0),
                Container(
                  child: Text('أقلع',
                      style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                ),

              ],
            ),

            SizedBox(height: 30.0),
            Row(

              children: [
                SizedBox(width: 110.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('ي',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
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
            SizedBox(height:10.0),
            Row(
              children: [
                SizedBox(width: 110.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('و',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
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
            SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(width: 110.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('ت',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.grey[200],width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.green,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("correct.mp3");
                          globals.flag4 = false;
                          Navigator.push
                          (
                          context,
                          MaterialPageRoute(builder: (context) => finall()),
                        );
                        },

                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(width: 110.0),
                ButtonTheme(

                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text('ن',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
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



            SizedBox(height: 245.0),

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
                                MaterialPageRoute(builder: (context) => travel5()),
                              );
                            }),
                        SizedBox(width: 300.0),
                        IconButton(
                            icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 30,),
                            tooltip: 'Forward',
                            onPressed: () {
                              player.play("Mouse-Click.mp3");
                            /*  Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => travel7()),
                              );*/
                            })
                        ,
                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 56.0,
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