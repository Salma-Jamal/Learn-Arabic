import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

import '../character.dart';


class dal extends StatefulWidget {

  @override
  _dalState createState() => _dalState();
}


class _dalState extends State<dal> {

  static AudioCache player = new AudioCache();


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
                      Navigator.pop(context);
                    }),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 150.0,),
                Text('أضغط على الصورة لسماع الإسم',
                    style: TextStyle(color: Colors.black, fontSize: 25 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold))
              ],
            ),

            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 110.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 250.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 3.5,
                          image: AssetImage('assets/bear.png'),

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
                        onPressed: () {
                          player.play("Dob.m4a");

                        },
                      )
                  ),
                ),
              ],
            ),

            Row(
              children: [
                SizedBox(width: 110.0),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:190.0,
                  height: 250.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 5.0,
                          image: AssetImage('assets/bicycle.png'),

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
                        elevation: 8.0,
                        onPressed: () {
                          player.play("Draga.m4a");

                        },
                      )
                  ),
                )
              ],
            )
          ],
        )
    );
  }}