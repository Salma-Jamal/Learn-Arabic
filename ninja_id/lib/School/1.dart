import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/School/2.dart';
import 'package:ninjaid/list.dart';

class school extends StatefulWidget {
  @override
  _schoolState createState() => _schoolState();
}


class _schoolState extends State<school> {

  static AudioCache player = new AudioCache();
  var tcVisibility = false;

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
                    Navigator.push
                      (
                      context,
                      MaterialPageRoute(builder: (context) =>  List()),
                    );
                  }),
            ],
          ),
          //SizedBox(height: 60,),
          Row(
            children: [
              SizedBox(width: 190.0),
              Container(
                child: Text('أي منهم كتاب؟',
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.black, fontSize: 40 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600)),
              )
            ],
          ),
          SizedBox(height: 40.0),
          Row(
            children: [
              SizedBox(width: 40.0),
              ButtonTheme(
                padding: EdgeInsets.all(8.0),
                minWidth:150.0,
                height: 200.0,
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          scale: 3.3,
                          image: AssetImage('assets/newpaper.png'),

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
                      splashColor: Colors.red[800],

                      elevation: 8.0,
                      onPressed: () {
                        player.play("error.mp3");
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
              ButtonTheme(
                padding: EdgeInsets.all(8.0),
                minWidth:150.0,
                height: 200.0,
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 4.0,
                        image: AssetImage('assets/book.png'),

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
                      splashColor: Colors.green,
                      elevation: 8.0,
                      onPressed: () {
                        player.play("correct.mp3");
                        Navigator.push
                          (
                          context,
                          MaterialPageRoute(builder: (context) => school2()),
                        );
                      },
                    )
                ),
              )
            ],
          ),
          SizedBox(height: 5.0),
          Row(
            children: [
              SizedBox(width: 40.0),
              ButtonTheme(
                padding: EdgeInsets.all(8.0),
                minWidth:150.0,
                height: 200.0,
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 5.0,
                        image: AssetImage('assets/email.png'),

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
                      splashColor: Colors.red[800],
                      elevation: 8.0,
                      onPressed: () {
                        player.play("error.mp3");
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
              ButtonTheme(
                padding: EdgeInsets.all(8.0),
                minWidth:150.0,
                height: 200.0,
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        scale: 4.0,
                        image: AssetImage('assets/pap2.png'),

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
                      splashColor: Colors.red[800],
                      elevation: 8.0,
                      onPressed: () {
                        player.play("error.mp3");
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
              )
            ],
          ),

          SizedBox(height: 80.0),

          Row(
            children: [
              Stack(
                children: [
                  Row(
                    children: [

                      SizedBox(width: 350.0),
                      IconButton(
                          icon: Icon(Icons.arrow_forward,color: Colors.grey,size: 30,),
                          tooltip: 'Forward',
                          onPressed: () {
                            player.play("Mouse-Click.mp3");
                            Navigator.push
                              (
                              context,
                              MaterialPageRoute(builder: (context) => school2()),
                            );
                          })

                    ],
                  ),

                  Visibility(
                      visible: tcVisibility,
                      child: Container(
                          width: 410.0,
                          height: 62.4,
                          color: Colors.red[200],
                          child: Center(
                            child:Text(
                              'إجابة خاطئة حاول مرة أخرى'
                              ,style: TextStyle(color: Colors.white, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w600),
                            ),
                          )
                      ))



                ],
              )
            ],
          )

        ],
      )
    );




  }}