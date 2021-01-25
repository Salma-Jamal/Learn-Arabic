import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/travel/1.dart';
import 'package:ninjaid/travel/3.dart';
import 'package:ninjaid/globals.dart' as globals;


class travel1 extends StatefulWidget {
  @override
  _travel1State createState() => _travel1State();
}


class _travel1State extends State<travel1> {

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
                SizedBox(width: 130.0),
                Container(
                  child: Text('ماذا توضح هذه الصورة:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 37 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),



            SizedBox(height: 25.0),
            Row(
              children: [
                SizedBox(width: 80.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:250.0,
                  height: 240.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2.5,
                          image: AssetImage('assets/passport.png'),

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


            SizedBox(height: 40.0),
            Row(

              children: [

                SizedBox(width: 30.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("كتاب",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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

                SizedBox(width: 45.0),

                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 5.0,
                  child: Container(
                      child:MaterialButton(
                        child: Text("مجلد",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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
                        child: Text("جواز سفر",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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
                          MaterialPageRoute(builder: (context) => travel2()),
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
                        child: Text("مجلة",
                            style: TextStyle(color: Colors.grey[600], fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
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

            SizedBox(height: 130.0),

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
                                MaterialPageRoute(builder: (context) => travel()),
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
                                MaterialPageRoute(builder: (context) => travel2()),
                              );
                            })
                        ,
                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 56.3,
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