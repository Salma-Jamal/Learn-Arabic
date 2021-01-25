import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:ninjaid/Level2/final.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/globals.dart' as globals;



class drag4 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: '',
      ),
      home: ColorGame2(),
    );
  }
}

class ColorGame2 extends StatefulWidget{
  @override
  createState()  => ColorGame2State ();
}

class ColorGame2State extends State<ColorGame2> {
  static AudioCache player = new AudioCache();
  var tcVisibility = false;
  int seed = 1;
  int flag3 = 0;
  final Map<String, bool> score = {};
  final Map choices = {

    'تخييم':'🏕️',
    'تزحلق':'🏂',
    'تنزه': '🏞️',

  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      body:Column(
        children: [
          SizedBox(height: 10,),

          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.close,color: Colors.grey,size: 30,),
                  tooltip: 'Close',
                  onPressed: () {
                    Navigator.push
                      (
                      context,
                      MaterialPageRoute(builder: (context) =>home2()),
                    );
                  }),
            ],
          ),
          Row(
            children: [
              SizedBox(width: 80,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 260,
                height: 60,
                child:Text('وصل الصفة المناسبة',
                  style: TextStyle(color: Colors.brown, fontSize: 38 ,
                    fontStyle: FontStyle.normal,fontWeight: FontWeight.w600,),
                  textDirection: TextDirection.ltr,),

              )
            ],
          ),


          SizedBox(height: 90,),

                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys.map((emoji) =>_buildDragTarget(emoji)).toList()
                ),



          SizedBox(height: 70,),
          Stack(children:[
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: choices.keys.map((emoji){
                  return Draggable<String>(
                    data: emoji,
                    child: Emoji(emoji: score[emoji] == true? '' : emoji),
                    feedback: Emoji(emoji: emoji,),
                    childWhenDragging: Emoji(emoji: '',),
                  );

                }).toList()..shuffle(Random(seed))
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

        if(score[emoji] == true)
        {
          return Container(
            color: Colors.transparent,
            height: 100.0,
            width:100.0,
          );
        }
        else
        {
          return Container(
              height: 100.0,
              width: 100.0,
              child:Center(
                child:Text(
                    choices[emoji],
                    style:TextStyle(color: Colors.grey[600], fontSize: 110 ,
                      fontStyle: FontStyle.normal,fontWeight: FontWeight.w500,)

                ),
              )

          );
        }

      },

      onWillAccept: (data) => data == emoji,

      onAccept: (data)
      {
        player.play("correct2.mp3");

        setState(()
        {
          score[emoji] = true;
          tcVisibility = true;
          Future.delayed(Duration(seconds: 2)).then((_){
            setState(() {
              tcVisibility = false;}); });

          flag3+=1;
          if(flag3 == 3)
          {
            if(globals.finishedlvl2 == false){
              globals.calcScore(20);
              globals.finishedlvl2 = true;
            }

            Future.delayed(Duration(seconds: 2)).then((_){
              Navigator.push
                (
                context, MaterialPageRoute(builder: (context) =>finall()),
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
        height: 60,
        width:130,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.brown, fontSize: 29, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}

