import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'dart:math';
import 'package:ninjaid/Level2/3.dart';
import 'package:ninjaid/menu2.dart';



class drag2 extends StatelessWidget {
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
  int flag1 = 0;
  final Map<String, bool> score = {};
  final Map choices = {

    'ط':'ق ___ ة',
    'ت':'مساح ___',

  };
  int seed = 1;
  AudioCache audioCache = AudioCache();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[100],

      body:Column(
        children: [
          SizedBox(height: 20,),
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
                  })
            ],
          ),
          Row(
            children: [
              SizedBox(width: 60,),
              Container(
                padding: EdgeInsets.all(8.0),
                width: 310,
                height: 60,
                child:Text('وصل الحروف الناقصة',
                  style: TextStyle(color: Colors.black, fontSize: 40 ,
                    fontStyle: FontStyle.normal,fontWeight: FontWeight.w800,),
                  textDirection: TextDirection.ltr,),


              )
            ],
          ),

          SizedBox(height: 50,),
          Row(
              children: [
                SizedBox(width: 50,),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:130.0,
                  height: 150.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2.0,
                          image: AssetImage('assets/cat.gif'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.black38,

                      ),
                      child:MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,

                      )
                  ),
                ),
                SizedBox(width: 10,),
                ButtonTheme(
                  padding: EdgeInsets.all(8.0),
                  minWidth:130.0,
                  height: 150.0,
                  child: Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          scale: 2.0,
                          image: AssetImage('assets/croco.gif'),
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        color: Colors.black38,

                      ),
                      child:MaterialButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.transparent,width: 2.0),
                        ),
                        padding: EdgeInsets.all(8.0),
                        textColor: Colors.white,
                        splashColor: Colors.red[800],
                        elevation: 8.0,

                      )
                  ),
                )
              ]),
          SizedBox(height: 20,),
          Stack(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: choices.keys.map((emoji) =>_buildDragTarget(emoji)).toList()
                ),

              ]),

          Stack(children:[
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
            height: 50.0,
            width:120.0,
          );
        }
        else
        {
          return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.grey[200],
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(18),
              ),
              height: 50.0,
              width: 120.0,
              child:Center(
                child:Text(
                    choices[emoji],
                    style:TextStyle(color: Colors.grey[600], fontSize: 30 ,
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

          flag1+=1;
          if(flag1 == 2)
          {
            Future.delayed(Duration(seconds:2 )).then((_){
              Navigator.push
                (
                context, MaterialPageRoute(builder: (context) =>drag3()),
              );});
          }
        });

      },

      onLeave: (data){
      //  player.play("wrong.mp3");
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
        height: 90,
        width: 70,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 40),
        ),
      ),
    );
  }
}

