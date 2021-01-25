import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:async';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level3/4.dart';



class three3 extends StatefulWidget {
  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<three3> {

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
                        SizedBox(width: 190,),
                        Text('ماهي الجملة التي سمعتها؟',
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
                      ],
                    ),

                  ),
                ]
            ),


            SizedBox(height: 40.0),
     Row(
       children: [
         SizedBox(width: 180,),
         IconButton(
             icon:Icon(Icons.volume_up,size: 35,),
             onPressed: (){
               player.play('Anaakra2.m4a');
             })
       ],
     ),
            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width:80),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:250.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('أنا اقرأ من الكاب',
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
                          player.play("wrong.mp3");
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
                  minWidth:250.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('أنا أكتب على الكتاب',
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
                          player.play("wrong.mp3");
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
                  minWidth:250.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('أنا أقرأ من الكتاب',
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

                          }

                          );


                          Future.delayed(Duration(seconds: 2)).then((_){
                            Navigator.push
                              (
                              context,
                              MaterialPageRoute(builder: (context) => three4()),
                            );

                          });


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
                  minWidth:250.0,
                  height: 10.0,
                  child: Container(
                      child:MaterialButton(
                        color: Colors.white,
                        child: Text('أنا اقرأ على الكتاب',
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
                          player.play("wrong.mp3");
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


          ],
        )
    );

}

}