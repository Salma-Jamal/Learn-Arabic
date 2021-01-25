import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/letters.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'menu2.dart';
import 'package:ninjaid/User/userPage.dart';


void main() {
  runApp( MaterialApp(
    home: new Greeting(),
  ));
}

class Greeting extends StatefulWidget {
  @override
  _GreetingState createState() => new _GreetingState();
}

class _GreetingState extends State<Greeting> {
  @override
  initState() {
    super.initState();
    new Timer(const Duration(seconds: 3), onClose);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.teal[800],
     body: Center(
          child:SpinKitCubeGrid(
            color: Colors.white,
            size: 50.0,
          )
      ));

  }

  void onClose() {
    Navigator.of(context).pushReplacement(new PageRouteBuilder(
        maintainState: true,
        opaque: true,
        pageBuilder: (context, _, __) => new Home(),
        transitionDuration: const Duration(seconds: 2),
        transitionsBuilder: (context, anim1, anim2, child) {
          return new FadeTransition(
            child: child,
            opacity: anim1,
          );
        }));
  }
}

class Home extends StatelessWidget {
  static AudioCache player = new AudioCache();
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

        home: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/273.jpg"), fit: BoxFit.cover)),

            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Column(
                       children: [
                               SizedBox(height: 270.0),
                               Row(
                                  children: [
                                          SizedBox(width: 100.0),
                                          ButtonTheme(
                                                  minWidth:200.0,
                                                  height: 50.0,
                                                  child: Container(
                                                       padding: EdgeInsets.all(8.0),
                                                       child:MaterialButton(
                                                           shape: RoundedRectangleBorder(
                                                                      borderRadius: BorderRadius.circular(18.0),
                                                                          side: BorderSide(color:  Colors.teal,width: 2.0),
                                                                          ),
                                                           child: Text('ابدأ'
                                                                       ,style: TextStyle(color: Colors.white, fontSize: 25 ,
                                                                       fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                                                             padding: EdgeInsets.all(8.0),
                                                            textColor: Colors.black,
                                                          color:  Colors.teal,
                                                         splashColor: Colors.white,
                                                         elevation: 8.0,
                                                         onPressed: () {
                                                            player.play("Mouse-Click.mp3");
                                                            Navigator.push
                                                             (
                                                                context,
                                                                 MaterialPageRoute(builder: (context) =>home2()),
                                                             );
                                                           },
                                                         )

                                                     ),)
                                             ],),

                  Row(
                    children: [
                      SizedBox(width: 100.0),
                      ButtonTheme(
                        minWidth:200.0,
                        height: 50.0,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                                child:MaterialButton(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color:  Colors.teal,width: 2.0),
                                  ),
                                  child: Text('تعلم'
                                      ,style: TextStyle(color: Colors.white, fontSize: 25 ,
                                          fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                                  padding: EdgeInsets.all(8.0),
                                  textColor: Colors.black,
                                  color: Colors.teal,
                                  splashColor: Colors.white,
                                  elevation: 8.0,
                                  onPressed: () {
                                    player.play("Mouse-Click.mp3");
                                    Navigator.push
                                      (
                                      context,
                                      MaterialPageRoute(builder: (context) =>ListPage1()),
                                    );
                                  },
                                )
                            ),

                        )
                    ],
                  ),

                         Row(
                           children: [
                             SizedBox(width: 100.0),
                             ButtonTheme(
                               minWidth:200.0,
                               height: 50.0,
                               child: Container(
                                   padding: EdgeInsets.all(8.0),
                                   child:MaterialButton(
                                     shape: RoundedRectangleBorder(
                                       borderRadius: BorderRadius.circular(18.0),
                                       side: BorderSide(color:  Colors.teal,width: 2.0),
                                     ),
                                     child: Text('النتيجة'
                                         ,style: TextStyle(color: Colors.white, fontSize: 25 ,
                                             fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                                     padding: EdgeInsets.all(8.0),
                                     textColor: Colors.black,
                                     color: Colors.teal,
                                     splashColor: Colors.white,
                                     elevation: 8.0,
                                     onPressed: () {
                                       player.play("Mouse-Click.mp3");
                                       Navigator.push
                                         (
                                         context,
                                         MaterialPageRoute(builder: (context) =>UserPage()),
                                       );
                                     },
                                   )
                               ),

                             )
                           ],
                         ),
                ],),
            )
        )
    );


  }
}