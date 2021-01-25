import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/4.dart';


class sudo3 extends StatefulWidget {
  @override
  _sudo3State createState() => _sudo3State();
}


class _sudo3State extends State<sudo3> {
  int akal = 0;
  int zara3 =0;
  int kalb =0;
  int qalb  =0;
  int finished = 0 ;
  bool akalflag = false;
  bool zara3flag= false;
  bool kalbflag= false;
  bool qalbflag= false;

  static AudioCache player = new AudioCache();

  void comp(int c){

    player.play("correct2.mp3");

    switch(c)
    {
      case 1:
        {
          akal+=1;
          if(akal == 3 )
          {
            setState(() {
              akalflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Akal.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo4()),
                );}); }
          }


        }break;

      case 2:
        {
          zara3+=1;
          if(zara3 == 3 )
          {
            setState(() {
              zara3flag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Zara3.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo4()),
                );}); }
          }


        }break;

      case 3:
        {
          kalb+=1;
          if(kalb == 3 )
          {
            setState(() {
              kalbflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Kalb.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo4()),
                );}); }
          }


        }break;

      case 4:
        {
          qalb+=1;
          if(qalb == 3 )
          {
            setState(() {
              qalbflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Qalb.m4a"); });

            if(finished == 4){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo4()),
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
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed:  akalflag ? null:  () =>comp(1),
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
                            child: Text('ك'
                                ,style: TextStyle(color: Colors.purple, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: akalflag?null: () => comp(1),
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
                            child: Text('أ'
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: akalflag? null:  () => comp(1) ,
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
                            child: Text('ز'
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: zara3flag? null: () => comp(2) ,
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
                            child: Text('ب'
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed:  kalbflag ? null:  () =>comp(3),
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
                            child: Text('ل'
                                ,style: TextStyle(color: Colors.purple, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: kalbflag ? null:() => comp(3) ,
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
                            child: Text('ك'
                                ,style: TextStyle(color: Colors.purple,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: kalbflag ? null:  () =>comp(3) ,
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
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: zara3flag ? null:  () => comp(2) ,
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
                            child: Text('ب'
                                ,style: TextStyle(color: Colors.purple,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: qalbflag ? null:  () => comp(4) ,
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
                            child: Text('ل'
                                ,style: TextStyle(color: Colors.purple,fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: qalbflag? null:  () =>comp(4) ,
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
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed: qalbflag ? null:  () =>comp(4) ,
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
                                ,style: TextStyle(color: Colors.purple, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.purple,
                            elevation: 8.0,
                            onPressed:  zara3flag ? null:  () =>comp(2),
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