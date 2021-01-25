import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/culture/4.dart';
import 'package:ninjaid/culture/6.dart';
import 'package:ninjaid/culture/3.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/culture/levelup.dart';

class culture5 extends StatefulWidget {
  @override
  _culture5State createState() => _culture5State();
}


class _culture5State extends State<culture5> {
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
            //SizedBox(height: 60,),
            Row(
              children: [
                SizedBox(width: 190.0),
                Container(
                  child: Text('أختر الإجابة الصحيحة؟',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                )
              ],
            ),

            SizedBox(height: 8.0),
            Row(
              children: [
                SizedBox(width: 70.0),
                Container(
                  child: Text("من هو الشخص الذي تتمكن من رؤيته ولا يتمكن هو من رؤيتك:",
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black, fontSize: 18 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w400)),
                )
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
                          scale: 5.0,
                          image: AssetImage('assets/blind.jpg'),

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

            //  SizedBox(height: 10.0),



            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(width: 30.0),
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
                        child:Text('الكفيف'
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
                            MaterialPageRoute(builder: (context) => culture6()),
                          );
                        },
                      )
                  ),
                ),

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
                        child:Text('الفكيف'
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
                            child:Text('الكيف'
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
                )
              ],
            ),

            SizedBox(height: 120.0),


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
                                MaterialPageRoute(builder: (context) => culture4()),
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
                                MaterialPageRoute(builder: (context)=> culture6()),
                              );
                            }
                            )
                            ,
                      ],
                    ),

                    Visibility(
                        visible: tcVisibility,
                        child: Container(
                            width: 410.0,
                            height: 50.0,
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