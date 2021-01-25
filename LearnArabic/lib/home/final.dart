import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ninjaid/list.dart';
import 'package:ninjaid/User/userPage.dart';


AudioCache player = new AudioCache();


class finall extends StatefulWidget {
  @override
  _finallState createState() => new _finallState();
}

class _finallState extends State<finall> {


  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds:6), onClose);
    player.play("applause10.mp3");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/bal7.gif"), fit: BoxFit.cover)),
       child: Scaffold(
         backgroundColor: Colors.transparent,
         body: Center(
               child: Image.asset(
                  "assets/jump5.gif",
                  height: 180.0,
                )

            ),)
        )
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new List(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}



/*class Home extends StatelessWidget {
  static AudioCache player = new AudioCache();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(


    );
    // ))));

  }
}*/