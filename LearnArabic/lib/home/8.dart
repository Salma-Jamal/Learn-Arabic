import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/home/7.dart';
import 'package:ninjaid/home/final.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/globals.dart' as globals;


class home8 extends StatefulWidget {
  @override
  _familyState2 createState() => _familyState2();
}


class _familyState2 extends State<home8> {

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
                  child: Text('أي واحدة غرفة النوم؟',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 60.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:280.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2.5,
                          image: AssetImage('assets/livingroom2.gif'),

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

              ],
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                SizedBox(width: 60.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:280.0,
                  height: 200.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 3.6,
                          image: AssetImage('assets/bedroom.gif'),

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
                          globals.flag3 = false;
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
                                MaterialPageRoute(builder: (context) => home7()),
                              );
                            }),
                        SizedBox(width: 300.0),
                        IconButton(
                            icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 30,),
                            tooltip: 'Forward',
                            onPressed: () {
                              player.play("Mouse-Click.mp3");
                           /*   Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) => home9()),
                              );*/
                            })

                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 55.0,
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