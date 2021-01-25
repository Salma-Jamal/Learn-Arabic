import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:ninjaid/Level2/5.dart';




class drag3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: '',
      ),
      home: ColorGame(),
    );
  }
}


class ColorGame extends StatefulWidget{

  @override
  createState()  => ColorGameState ();
}

class ColorGameState extends State<ColorGame> {
  AudioCache player = new AudioCache();
  int flag2 = 0;
  var tcVisibility = false;
  int seed = 2;
  final Map<String, bool> score = {};
  final Map choices = {
    '🐠':'🌊',
    '🐫':'🏜️',
    '🐒':'🌳',
    '⛄':'❄',
    '🐢':'🏝️',

  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],
      appBar: AppBar(
        title: Text('وصل كل حيوان إلى المكان المناسب',
            style: TextStyle(color: Colors.black, fontSize: 30,fontWeight: FontWeight.w600)),
        backgroundColor: Colors.red[100],
        elevation: 0.0,
        centerTitle: true,
      ),

      body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: choices.keys.map((emoji){
                        return Draggable<String>(
                          data: emoji,
                          child: Emoji(emoji: score[emoji] == true? '' : emoji),
                          feedback: Emoji(emoji: emoji,),
                          childWhenDragging: Emoji(emoji: '',),

                        );}).toList()
                  ),

                    SizedBox(width: 50.0,),

                   Visibility(
                         visible: tcVisibility,
                         child: Center(
                           child:Image.asset('assets/jump1.gif', height: 100.0,),
                         )
                     ),

                     SizedBox(width: 60.0,),

                     Column(
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children:choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()..shuffle(Random(seed)),
                     ),

                   ],
                 )

    );
  }

  Widget _buildDragTarget(emoji){
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming,List rejected){
        if(score[emoji] == true){
          return Container(
            color: Colors.transparent,
            height: 80.0,
            width: 100.0,
          );
        }else{
          return Container(
            child:Text(   choices[emoji] ,  style: TextStyle(color: Colors.black, fontSize: 100),
            ),  height: 100.0,
            width: 100.0,);
        }

      },

      onWillAccept: (data) => data == emoji,

      onAccept: (data){
        player.play("correct2.mp3");
        setState(() {
          score[emoji] = true;
          tcVisibility = true;
          Future.delayed(Duration(seconds: 2)).then((_){
            setState(() {
              tcVisibility = false;
            });
          }
          );
          flag2+=1;
          if(flag2 == 5){
            Future.delayed(Duration(seconds: 2)).then((_){
              Navigator.push
                (
                context,
                MaterialPageRoute(builder: (context) => drag5()),
              );});
          }
        });

      },

      onLeave: (data){
       // player.play("wrong.mp3");
      },
    );
  }
}

class Emoji extends StatelessWidget{
  Emoji({Key key, this.emoji}) : super(key: key);
  final String emoji;

  @override
  Widget build(BuildContext context) {

    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        height: 100,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 55),
        ),
      ),
    );
  }
}

