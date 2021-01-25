import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/Level3/1.dart';
import 'package:ninjaid/Level4/1.dart';
import 'package:ninjaid/List.dart';
import 'Level2/1.dart';
import 'main.dart';

class home2 extends StatelessWidget {
  static AudioCache player = new AudioCache();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/snow.gif"), fit: BoxFit.cover)),

            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                children: [
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(Icons.close,color: Colors.grey[500],size: 40,),
                          tooltip: 'Close',
                          onPressed: () {
                            Navigator.push
                              (
                              context,
                              MaterialPageRoute(builder: (context) =>  Home()),
                            );
                          }),
                    ],
                  ),

                  Row(
                    children: [
                      SizedBox(width: 270,),
                      Text('أختر مرحلة',
                          style: TextStyle(color: Colors.black, fontSize: 35 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w700))
                    ],
                  ),

                  SizedBox(height: 20.0),
                  Row(
                    children: [
                      SizedBox(width: 140.0),

                      Material(
                        elevation: 4.0,
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: Ink.image(
                          image: AssetImage('assets/brain.gif'
                          ),
                          fit: BoxFit.cover,
                          width: 110.0,
                          height: 110.0,
                          child: InkWell(
                            onTap: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) =>  List()),
                              );
                            },
                          ),
                        ),

                      ),
                      SizedBox(width: 20,),

                    ],
                  ),

                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 140.0),

                      Material(
                        elevation: 4.0,
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: Ink.image(
                          image: AssetImage('assets/srch.gif'),
                          fit: BoxFit.cover,
                          width: 110.0,
                          height: 110.0,
                          child: InkWell(
                            onTap: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) =>  DragScreenState()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                    ],
                  ),

                  SizedBox(height: 30.0),

                  Row(
                    children: [
                      SizedBox(width: 140.0),

                      Material(
                        elevation: 4.0,
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: Ink.image(
                          image: AssetImage('assets/mice.gif'),
                          fit: BoxFit.cover,
                          width: 110.0,
                          height: 110.0,
                          child: InkWell(
                            onTap: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) =>  three1()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                    ],
                  ),

                  SizedBox(height: 30,),
                  Row(
                    children: [
                      SizedBox(width: 140.0),

                      Material(
                        elevation: 4.0,
                        shape: CircleBorder(),
                        clipBehavior: Clip.hardEdge,
                        color: Colors.transparent,
                        child: Ink.image(
                          image: AssetImage('assets/connect.gif'),
                          fit: BoxFit.cover,
                          width: 110.0,
                          height: 110.0,
                          child: InkWell(
                            onTap: () {
                              player.play("Mouse-Click.mp3");
                              Navigator.push
                                (
                                context,
                                MaterialPageRoute(builder: (context) =>  sudo()),
                              );
                            },
                          ),
                        ),
                      ),
                      SizedBox(width: 20,),

                    ],
                  ),



                ],),
            )
        )
    );
    // ))));

  }
}