import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ninjaid/globals.dart' as globals;
import 'package:ninjaid/menu2.dart';
import 'package:ninjaid/main.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage>{
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      //backgroundColor: Colors.white,

       home:Container(
         decoration: BoxDecoration(
             image: DecorationImage(
                 image: AssetImage("assets/snow.gif"), fit: BoxFit.cover)),

         child: Scaffold(
           backgroundColor:Colors.transparent,
          appBar: AppBar(
             backgroundColor: Colors.white,
             title: Text('نتيجتك حتى الأن',
               style: TextStyle(
                 color: Colors.grey, fontSize: 30 , fontStyle: FontStyle.normal,fontWeight: FontWeight.bold,
               ),),
             elevation: 1.0,
             automaticallyImplyLeading: false,
             centerTitle: true,
           ),

           body: Column(
             children: [

               SizedBox(height: 120,),
               Row(
                 children: [
                   SizedBox(width:140),
                   Image.asset('assets/giphy.gif'
                   ,width:150,height: 150,),


                 ],
               ),
               Row(
                 children: [
                   SizedBox(width: 80,),
                    Container(
                      width:250,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                          border: Border.all(color: Colors.yellow),

                      ),
                      //color: Colors.yellow,
                         padding: EdgeInsets.all(8.0),

                     child:Center(
                       child: Text(globals.score.toString()+'%'
                       ,style:TextStyle(fontSize: 30,fontWeight: FontWeight.w800)),
                         ),)

                      // ),
           ]
                   ),

            //     ],
              // ),

               SizedBox(height: 230,),
               Container(
                 child:Row(
                   children: [
                     Container(
                       height:90.4,
                       width:103,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           color:Colors.grey[300],
                           width: 2,
                         ),
                         //borderRadius: BorderRadius.circular(18),
                       ),
                       child: IconButton(
                           icon: Icon(Icons.home,color: Colors.grey,size: 30,),
                           tooltip: 'أغلق',
                           onPressed: () {
                              Navigator.push
                         (
                         context,
                         MaterialPageRoute(builder: (context) =>   Home()),
                       );
                           }),
                     ),
                     Container(
                       height:90.4,
                       width:104,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           color: Colors.grey[300],
                           width: 2,
                         ),
                         //borderRadius: BorderRadius.circular(18),
                       ),
                       child: IconButton(
                           icon: Icon(Icons.person,color: Colors.grey,size: 30,),
                           tooltip: 'صفحتك',
                           onPressed: () {
                              Navigator.push
                         (
                         context,
                         MaterialPageRoute(builder: (context) =>  UserPage()),
                       );
                           }),
                     ),

                     Container(
                       height:90.4,
                       width:102,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           color: Colors.grey[300],
                           width: 2,
                         ),
                         //borderRadius: BorderRadius.circular(18),
                       ),
                       child: IconButton(
                           icon: Icon(Icons.menu,color: Colors.grey,size: 30,),
                           tooltip: 'المراحل',
                           onPressed: () {
                              Navigator.push
                         (
                         context,
                         MaterialPageRoute(builder: (context) =>  home2()),
                       );
                           }),
                     ),

                     Container(
                       height:90.4,
                       width:102,
                       decoration: BoxDecoration(
                         color: Colors.transparent,
                         border: Border.all(
                           color: Colors.grey[300],
                           width: 2,
                         ),
                         //borderRadius: BorderRadius.circular(18),
                       ),
                       child: IconButton(
                           icon: Icon(Icons.close,color: Colors.grey,size: 30,),
                           tooltip: 'الرئيسية',
                           onPressed: () {
                              Navigator.push
                         (
                         context,
                         MaterialPageRoute(builder: (context) =>  Home()),
                       );
                           }),
                     ),
                   ],
                 ),
               )
             ],
           ),
         ),
       )


     );
  }

}