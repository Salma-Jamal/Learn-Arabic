import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/Level4/2.dart';


class sudo extends StatefulWidget {
  @override
  _sudoState createState() => _sudoState();
}


class _sudoState extends State<sudo> {
   int ra2e3a = 0;
   int asad =0;
   int nemr =0;
   int ward =0;
   int bata =0;
   int ma2 = 0;
   int finished = 0 ;
   bool asadflag = false;
   bool ra2e3aflag= false;
   bool nemrflag= false;
   bool wardflag= false;
   bool bataflag= false;
   bool ma2flag = false;
   static AudioCache player = new AudioCache();

   void comp(int c){

       player.play("correct2.mp3");

       switch(c)
       {
              case 1:
                {
                  asad+=1;
                  if(asad == 3 )
                   {
                     setState(() {
                       asadflag = true;
                       finished+=1;});

                     Future.delayed(Duration(seconds: 2)).then((_){
                       player.play("Asad.m4a"); });

                       if(finished == 6){
                         Future.delayed(Duration(seconds: 4)).then((_){
                         Navigator.push
                         (
                           context,
                           MaterialPageRoute(builder: (context) => sudo2()),
                        );}); }
                   }


                }break;

             case 2:
           {
             ra2e3a+=1;
             if(ra2e3a == 5 )
             {
               setState(() {
                 ra2e3aflag = true;
                 finished+=1;});

               Future.delayed(Duration(seconds: 2)).then((_){
                 player.play("Ra2e3a.m4a"); });

               if(finished == 6){
                 Future.delayed(Duration(seconds: 4)).then((_){
                   Navigator.push
                     (
                     context,
                     MaterialPageRoute(builder: (context) => sudo2()),
                   );}); }
             }


           }break;

         case 3:
           {
             nemr+=1;
             if(nemr == 3 )
             {
               setState(() {
                 nemrflag = true;
                 finished+=1;});

               Future.delayed(Duration(seconds: 2)).then((_){
                 player.play("Nemr.m4a"); });

               if(finished == 6){
                 Future.delayed(Duration(seconds: 4)).then((_){
                   Navigator.push
                     (
                     context,
                     MaterialPageRoute(builder: (context) => sudo2()),
                   );}); }
             }


           }break;

         case 4:
           {
             ward+=1;
             if(ward == 3 )
             {
               setState(() {
                 wardflag = true;
                 finished+=1;});

               Future.delayed(Duration(seconds: 2)).then((_){
                 player.play("Ward.m4a"); });

               if(finished == 6){
                 Future.delayed(Duration(seconds: 4)).then((_){
                   Navigator.push
                     (
                     context,
                     MaterialPageRoute(builder: (context) => sudo2()),
                   );}); }
             }


           }break;

         case 5:
           {
             bata+=1;
             if(bata == 3 )
             {
               setState(() {
                 bataflag = true;
                 finished+=1;});

               Future.delayed(Duration(seconds: 2)).then((_){
                 player.play("Bata.m4a"); });

               if(finished == 6){
                 Future.delayed(Duration(seconds: 4)).then((_){
                   Navigator.push
                     (
                     context,
                     MaterialPageRoute(builder: (context) => sudo2()),
                   );}); }
             }


           }break;

         case 6:
           {
             ma2+=1;
             if(ma2 == 3 )
             {
               setState(() {
                 ma2flag= true;
                 finished+=1;});

               Future.delayed(Duration(seconds: 2)).then((_){
                 player.play("Ma2.m4a"); });

               if(finished == 6){
                 Future.delayed(Duration(seconds: 4)).then((_){
                   Navigator.push
                     (
                     context,
                     MaterialPageRoute(builder: (context) => sudo2()),
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

            Row(
              children: [
                SizedBox(width: 160.0),
                Container(
                  child: Text('حاول تكوين ست كلمات:',
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.grey[600], fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w800)),
                )
              ],
            ),


            SizedBox(height: 30.0),
            Row(
                children: [
                  SizedBox(width: 30,),
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: asadflag?null: () => comp(1),
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
                            child: Text('س'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: asadflag? null:  () => comp(1) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: asadflag? null: () => comp(1) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: ra2e3aflag ? null: () =>comp(2) ,
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 30,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 30,),
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            // padding: EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:nemrflag ?null: () =>comp(3) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: nemrflag ? null:() => comp(3) ,
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
                            child: Text('ن'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: nemrflag ? null:  () =>comp(3) ,
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
                            child: Text('ا'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: ra2e3aflag ? null:  () => comp(2) ,
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 30,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 30,),
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:wardflag ? null:  () =>comp(4),
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: wardflag ? null:  () => comp(4) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: wardflag ? null:  () =>comp(4) ,
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
                            child: Text('ئ'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: ra2e3aflag ? null:  () =>comp(2) ,
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 30,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 30,),
                  Expanded(
                    flex: 1,
                    child: ButtonTheme(
                      height:80.0,
                      child: Container(
                          padding: EdgeInsets.all(8.0),
                          child:MaterialButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.grey[100],width: 2.0),
                            ),
                            child: Text('ة'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:bataflag ? null:  () =>comp(5) ,
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
                            child: Text('ط'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:bataflag ? null:  () =>comp(5),
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:bataflag ? null:  () =>comp(5) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:  ra2e3aflag ? null:  () =>comp(2),
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 30,),
                ]
            ),

            Row(
                children: [
                  SizedBox(width: 30,),
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
                            child: Text('ء'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: ma2flag ? null:  () =>comp(6) ,
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
                            child: Text('ا'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed: ma2flag ? null:  () =>comp(6) ,
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
                                ,style: TextStyle(color: Colors.blue, fontSize: 30, fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            // padding: EdgeInsets.all(8.0),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:  ma2flag ? null:  () =>comp(6) ,
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
                            child: Text('ة'
                                ,style: TextStyle(color: Colors.blue, fontSize: 30 ,
                                    fontStyle: FontStyle.normal,fontWeight: FontWeight.bold)),
                            textColor: Colors.black,
                            color: Colors.white,
                            splashColor: Colors.blue,
                            elevation: 8.0,
                            onPressed:  ra2e3aflag ? null:  () =>comp(2) ,
                          )
                      ),
                    ),

                  ),
                  SizedBox(width: 30,),
                ]
            ),

          ],
        )
    );




  }}