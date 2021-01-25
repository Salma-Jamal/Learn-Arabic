import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:ninjaid/Level2/4.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/globals.dart' as globals;



class drag6 extends StatelessWidget {
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
  static AudioCache player = new AudioCache();
  var tcVisibility = false;
  int flag6 = 0;
  final Map<String, bool> score = {};
  final Map choices = {

    '🌳':'شجرة',
    '❄':'ثلج',
    '⛰':'جبل'

  };
  int seed = 0;
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      body:Column(
        children: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.close,color: Colors.grey,size: 30,),
                  tooltip: 'Close',
                  onPressed: () {
                    Navigator.push
                      (
                      context,
                      MaterialPageRoute(builder: (context) =>home2()  ),
                    );
                  }),
            ],
          ),
          SizedBox(height: 10,),

          Row(
            children: [
              SizedBox(width: 50,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 312,
                height: 60,
                child:Text('أنقل كل اسم إلى المكان الصحيح',
                  style: TextStyle(color: Colors.brown, fontSize: 30 ,
                    fontStyle: FontStyle.normal,fontWeight: FontWeight.w800,),
                  textDirection: TextDirection.ltr,),
                /*decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),*/

              )
            ],
          ),


          SizedBox(height: 120,),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji){
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true? '' : emoji),
                  feedback: Emoji(emoji: emoji,),
                  childWhenDragging: Emoji(emoji: ' ',),
                );

              }).toList()..shuffle(Random(seed))
          ),
          SizedBox(height: 50,),
          Stack(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys.map((emoji) =>_buildDragTarget(emoji)).toList()
                ),
                Visibility(
                    visible: tcVisibility,
                    child: Center(
                      child:Image.asset('assets/ball.gif', height: 280.0,),
                    )
                )
              ])

        ],
      ),

    );
  }

  Widget _buildDragTarget(emoji){
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming,List rejected){
        if(score[emoji] == true){
          return Container(
            color: Colors.transparent,
            //alignment: Alignment.center,
            height: 60.0,
            width: 120.0,
          );
        }else{
          return Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                border: Border.all(
                  color: Colors.grey[200],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              // color:Colors.black38,
              height: 60.0,
              width: 120.0,
              child:Center(
                child:Text(
                    choices[emoji],
                    style:TextStyle(color: Colors.white, fontSize: 30 ,
                      fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,)

                ),
              )

          );
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
          flag6+=1;
          print(flag6);
          if(flag6 == 3){
            Future.delayed(Duration(seconds: 2)).then((_){
              Navigator.push
                (
                context,
                MaterialPageRoute(builder: (context) => drag4()),
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
        width: 100,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 70),
        ),
      ),
    );
  }
}

