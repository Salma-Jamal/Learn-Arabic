import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/3.dart';


class sudo2 extends StatefulWidget {
  @override
  _sudo2State createState() => _sudo2State();
}


class _sudo2State extends State<sudo2> {
  int qaws = 0;
  int la3ab =0;
  int waraq =0;
  int qara2  =0;
  int finished = 0 ;
  bool qawsflag = false;
  bool la3abflag= false;
  bool waraqflag= false;
  bool qara2flag= false;

  static AudioCache player = new AudioCache();

  void comp(int c){

    player.play("correct2.mp3");

    switch(c)
    {
      case 1:
        {
          qaws+=1;
          if(qaws == 3 )
          {
            setState(() {
              qawsflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Qaws.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo3()),
                );}); }
          }


        }break;

      case 2:
        {
          la3ab+=1;
          if(la3ab == 3 )
          {
            setState(() {
              la3abflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("La3ab.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo3()),
                );}); }
          }


        }break;

      case 3:
        {
          waraq+=1;
          if(waraq == 3 )
          {
            setState(() {
              waraqflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Waraq.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo3()),
                );}); }
          }


        }break;

      case 4:
        {
          qara2+=1;
          if(qara2 == 3 )
          {
            setState(() {
              qara2flag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Qara2.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo3()),
                );}); }
          }


        }break;


    }

  }

  @override
  Widget build(BuildContext context){

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
                        MaterialPageRoute(builder: (context) =>  home2()),
                      );
                    }),
              ],
            ),

            SizedBox(height: 40.0),
            Row(
              children: [
                SizedBox(width: 140.0),
                Container(
                  child: Text('حاول تكوين أربع كلمات:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey[500], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w800)),
                )
              ],
            ),


            SizedBox(height: 50.0),
            Row(
                children: [
                 SizedBox(width: 50,),
                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ب'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed:  la3abflag? null:  () =>comp(2),
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,

                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ع'
                                ,style: TextStyle(color: Colors.green, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: la3abflag?null: () => comp(2),
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      //padding: EdgeInsets.all(8.0),
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ل'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: la3abflag? null:  () => comp(2) ,
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      //padding: EdgeInsets.all(8.0),
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ق'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: qawsflag? null: () => comp(1) ,
                          )
                      ),
                    ),

                  ),


                  SizedBox(width: 50,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 50,),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ق'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed:  waraqflag ? null:  () =>comp(3),
                          )
                      ),
                    ),

                  ),
                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ر'
                                ,style: TextStyle(color: Colors.green, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: waraqflag ? null:() => comp(3) ,
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('و'
                                ,style: TextStyle(color: Colors.green,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: waraqflag ? null:  () =>comp(3) ,
                          )
                      ),
                    ),

                  ) ,

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('و'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: qawsflag ? null:  () => comp(1) ,
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 50,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 50,),
                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('أ'
                                ,style: TextStyle(color: Colors.green,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: qara2flag ? null:  () => comp(4) ,
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ر'
                                ,style: TextStyle(color: Colors.green,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: qara2flag? null:  () =>comp(4) ,
                          )
                      ),
                    ),

                  ) ,

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ق'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed: qara2flag ? null:  () =>comp(4) ,
                          )
                      ),
                    ),

                  ),

                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height: 80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('س'
                                ,style: TextStyle(color: Colors.green, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.green,
                            elevation: 8.0,
                            onPressed:  qawsflag ? null:  () =>comp(1),
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 50,),
                ]
            ),





          ],
        )
    );




  }}