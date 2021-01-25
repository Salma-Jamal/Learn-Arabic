import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/User/userPage.dart';


AudioCache player = new AudioCache();

class levelup extends StatefulWidget {
  @override
  _levelupState createState() => new _levelupState();
}

class _levelupState extends State<levelup> {


  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds:5), onClose);
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
                "assets/jump6.gif",
                height: 180.0,
              )

          ),
        ),
      )
    );
  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new UserPage(),
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