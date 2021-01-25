import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/Family/5.dart';
import 'package:ninjaid/Family/7.dart';
import 'package:ninjaid/School/9.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/School/5.dart';
import 'package:ninjaid/School/10.dart';

class family6 extends StatefulWidget {
  @override
  _family6State createState() => _family6State();
}


class _family6State extends State<family6> {

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
                SizedBox(width: 150.0),
                Container(
                  child: Text('أكمل الحرف الناقص:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),

            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 70.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:270.0,
                  height: 250.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2.0,
                          image: AssetImage('assets/hiboy.jpg'),

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

            SizedBox(height: 10.0),
            Row(
              children: [
                SizedBox(width: 120.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:40.0,
                  height: 50.0,
                  child: Container(

                      child:MaterialButton(
                        child: Text('ب',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:40.0,
                  height: 50.0,
                  child: Container(


                      child:MaterialButton(
                        child: Text('ح',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
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
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:40.0,
                  height: 50.0,
                  child: Container(


                      child:MaterialButton(
                        child: Text('ر',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:40.0,
                  height: 50.0,
                  child: Container(


                      child:MaterialButton(
                        child: Text(' ',
                            style: TextStyle(color: Colors.grey[600], fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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

              ],
            ),

            SizedBox(height: 30.0),
            Row(

              children: [
                SizedBox(width: 130.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:80.0,
                  height: 10.0,
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
                        splashColor: Colors.green,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("correct.mp3");
                          Navigator.push
                          (
                          context,
                          MaterialPageRoute(builder: (context) => family7()),
                        );
                        },

                      )
                  ),
                ),
                SizedBox(width: 10.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:80.0,
                  height: 10.0,
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


            SizedBox(height: 140.0),

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
                                MaterialPageRoute(builder: (context) => family5()),
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
                                MaterialPageRoute(builder: (context) => family7()),
                              );
                            })

                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 53.0,
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