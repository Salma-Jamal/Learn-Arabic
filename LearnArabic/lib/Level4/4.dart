import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/globals.dart' as globals;
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/5.dart';


class sudo4 extends StatefulWidget {
  @override
  _sudo4State createState() => _sudo4State();
}


class _sudo4State extends State<sudo4> {
  int rad = 0;
  int ma2el =0;
  int qafaz =0;
  int gabal  =0;
  int finished = 0 ;
  bool radflag = false;
  bool ma2elflag= false;
  bool qafazflag= false;
  bool gabalflag= false;

  static AudioCache player = new AudioCache();

  void comp(int c){

    player.play("correct2.mp3");

    switch(c)
    {
      case 1:
        {
          ma2el+=1;
          if(ma2el == 4 )
          {
            setState(() {
              ma2elflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Ma2el.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo5()),
                );}); }
          }


        }break;

      case 2:
        {
          rad+=1;
          if(rad == 2 )
          {
            setState(() {
              radflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Rad.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo5()),
                );}); }
          }


        }break;

      case 3:
        {
          qafaz+=1;
          if(qafaz == 3 )
          {
            setState(() {
              qafazflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Qafaz.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo5()),
                );}); }
          }


        }break;

      case 4:
        {
          gabal+=1;
          if(gabal == 3 )
          {
            setState(() {
              gabalflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Gabal.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo5()),
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
                      style: TextStyle(color: Colors.grey[600], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w800)),
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
                            child: Text('ل'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed:  ma2elflag ? null:  () =>comp(1),
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
                            child: Text('ئ'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: ma2elflag?null: () => comp(1),
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
                            child: Text('ا'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: ma2elflag? null:  () => comp(1) ,
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
                            child: Text('م'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: ma2elflag? null: () => comp(1) ,
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
                            child: Text('ز'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed:  qafazflag ? null:  () =>comp(3),
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
                            child: Text('ف'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: qafazflag ? null:() => comp(3) ,
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
                            child: Text('ق'
                                ,style: TextStyle(color: Colors.brown[500],fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: qafazflag ? null:  () =>comp(3) ,
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
                            child: Text('ر'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: radflag ? null:  () => comp(2) ,
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
                            child: Text('ل'
                                ,style: TextStyle(color: Colors.brown[500],fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: gabalflag ? null:  () => comp(4) ,
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
                            child: Text('ب'
                                ,style: TextStyle(color: Colors.brown[500],fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: gabalflag? null:  () =>comp(4) ,
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
                            child: Text('ج'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed: gabalflag ? null:  () =>comp(4) ,
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
                            child: Text('د'
                                ,style: TextStyle(color: Colors.brown[500], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.brown[500],
                            elevation: 8.0,
                            onPressed:  radflag ? null:  () =>comp(2),
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