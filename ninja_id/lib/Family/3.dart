import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/Family/2.dart';
import 'package:ninjaid/Family/4.dart';
import 'package:ninjaid/list.dart';

class family3 extends StatefulWidget {
  @override
  _familyState3 createState() => _familyState3();
}


class _familyState3 extends State<family3> {

  static AudioCache player = new AudioCache();
  var tcVisibility = false;

  @override
  Widget build(BuildContext context) {
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
                SizedBox(width: 190.0),
                Container(
                  child: Text('من منهم الأب؟',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 40.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 5.0,
                          image: AssetImage('assets/grandpa.jpg'),

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
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 3.0,
                          image: AssetImage('assets/dad.png'),

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
                        splashColor: Colors.green,
                        elevation: 8.0,
                        onPressed: () {
                          player.play("correct.mp3");
                          Navigator.push
                            (
                            context,
                            MaterialPageRoute(builder: (context) => family4()),
                          );
                        },
                      )
                  ),
                )
              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                SizedBox(width: 40.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 6.0,
                          image: AssetImage('assets/grandma.png'),

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
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:150.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 1.5,
                          image: AssetImage('assets/mum.png'),

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
                )
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
                                MaterialPageRoute(builder: (context) => family2()),
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
                                MaterialPageRoute(builder: (context) => family4()),
                              );
                            })

                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 62.0,
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
            )

          ],
        )
    );




  }}