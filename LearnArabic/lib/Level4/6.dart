import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/globals.dart' as globals;
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/final.dart';


class sudo6 extends StatefulWidget {
  @override
  _sudo6State createState() => _sudo6State();
}


class _sudo6State extends State<sudo6> {
  int bard = 0;
  int sa5n =0;
  int finished = 0 ;
  bool bardflag = false;
  bool sa5nflag= false;



  static AudioCache player = new AudioCache();

  void comp(int c){

    player.play("correct2.mp3");

    switch(c)
    {
      case 1:
        {
          bard+=1;
          if(bard == 3 )
          {
            setState(() {
             bardflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Barad.m4a"); });

            if(finished == 2){
              if(globals.finishedlvl4 == false){
                globals.calcScore(20);
                globals.finishedlvl4 = true;
              }
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => finall()),
                );}); }
          }


        }break;

      case 2:
        {
          sa5n+=1;
          if(sa5n == 3 )
          {
            setState(() {
              sa5nflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Sa5an.m4a"); });

            if(finished == 2){
              if(globals.finishedlvl4 == false){
                globals.calcScore(20);
                globals.finishedlvl4 = true;
              }
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => finall()),
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
                  child: Text('حاول تكوين كلمتين:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey[600], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w800)),
                )
              ],
            ),


            SizedBox(height: 50.0),
            Row(
                children: [
                  SizedBox(width: 70,),

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
                                ,style: TextStyle(color: Colors.blueGrey, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed:  sa5nflag ? null:  () =>comp(2),
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
                                ,style: TextStyle(color: Colors.blueGrey, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed: bardflag?null: () => comp(1),
                          )
                      ),
                    ),

                  ),




                  SizedBox(width: 70,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 70,),

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
                            child: Text('خ'
                                ,style: TextStyle(color: Colors.blueGrey, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed:  sa5nflag ? null:  () =>comp(2),
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
                                ,style: TextStyle(color: Colors.blueGrey, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed: bardflag ? null:() => comp(1) ,
                          )
                      ),
                    ),

                  ),



                  SizedBox(width: 70,),
                ]
            ),




            Row(
                children: [
                  SizedBox(width: 70,),


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
                            child: Text('ن'
                                ,style: TextStyle(color: Colors.blueGrey,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed: sa5nflag ? null:  () => comp(2) ,
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
                                ,style: TextStyle(color: Colors.blueGrey, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blueGrey,
                            elevation: 8.0,
                            onPressed:bardflag? null:  () =>comp(1) ,
                          )
                      ),
                    ),

                  ) ,


                  SizedBox(width: 70,),
                ]
            ),





          ],
        )
    );




  }}