import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/6.dart';


class sudo5 extends StatefulWidget {
  @override
  _sudo5State createState() => _sudo5State();
}


class _sudo5State extends State<sudo5> {
  int shams = 0;
  int qamar =0;
  int waqa3 =0;
  int finished = 0 ;
  bool shamsflag = false;
  bool qamarflag= false;
  bool waqa3flag= false;


  static AudioCache player = new AudioCache();

  void comp(int c){

    player.play("correct2.mp3");

    switch(c)
    {
      case 1:
        {
          shams+=1;
          if(shams == 3 )
          {
            setState(() {
              shamsflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Shams.m4a"); });

            if(finished == 3){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo6()),
                );}); }
          }


        }break;

      case 2:
        {
          qamar+=1;
          if(qamar == 3 )
          {
            setState(() {
              qamarflag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Qamr.m4a"); });

            if(finished == 3){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo6()),
                );}); }
          }


        }break;

      case 3:
        {
          waqa3+=1;
          if(waqa3 == 3 )
          {
            setState(() {
              waqa3flag = true;
              finished+=1;});

            Future.delayed(Duration(seconds: 2)).then((_){
              player.play("Waqa3.m4a"); });

            if(finished == 3){
              Future.delayed(Duration(seconds: 4)).then((_){
                Navigator.push
                  (
                  context,
                  MaterialPageRoute(builder: (context) => sudo6()),
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
                  child: Text('حاول تكوين ثلاث كلمات:',
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
                            child: Text('س'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed:  shamsflag ? null:  () =>comp(1),
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
                            child: Text('م'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: shamsflag?null: () => comp(1),
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
                            child: Text('ش'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: shamsflag? null:  () => comp(1) ,
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
                            child: Text('ر'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed:  qamarflag ? null:  () =>comp(2),
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
                            child: Text('م'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: qamarflag ? null:() => comp(2) ,
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
                                ,style: TextStyle(color:Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor:Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: qamarflag ? null:  () =>comp(2) ,
                          )
                      ),
                    ),

                  ) ,


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
                            child: Text('ع'
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor:Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: waqa3flag ? null:  () => comp(3) ,
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
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed:waqa3flag? null:  () =>comp(3) ,
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
                                ,style: TextStyle(color: Colors.tealAccent[700], fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.tealAccent[700],
                            elevation: 8.0,
                            onPressed: waqa3flag ? null:  () =>comp(3) ,
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