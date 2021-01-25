import 'package:flutter/material.dart';
import 'package:ninjaid/character.dart';
import 'package:audioplayers/audio_cache.dart';


class DetailPage extends StatefulWidget {

  final Character character;

  const DetailPage({
    Key key,
    @required this.character,
  }) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
     {
  static AudioCache player = new AudioCache();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Column(
             // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 20.0,),
                Row(
                  children: [
                    IconButton(
                        icon: Icon(Icons.close,color: Colors.grey,size: 30,),
                        tooltip: 'أغلق',
                        onPressed: () {
                          player.play("Mouse-Click.mp3");
                          Navigator.pop(context);
                        }),
                  ],
                ),
                SizedBox(height: 10.0,),
                Row(
                  children: [
                    SizedBox(width: 250.0,),
                    Text(widget.character.title,
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.justify,
                        style: TextStyle(color: Colors.black, fontSize: 40,fontStyle: FontStyle.normal,fontWeight: FontWeight.w700)
                    ),
                  ],
                ),
                SizedBox(height: 60.0,),
                Row(
                  children: [
                    SizedBox(width: 60.0,),
                        Image.asset(
                            widget.character.image,

                     ),

                       IconButton(
                          icon: Icon(Icons.volume_up,color: Colors.grey,size: 40,),
                          tooltip: 'أستمع',
                        onPressed: () {
                          player.play(widget.character.sound);
                        }),


                      ],

                ),

               Row(
                 children: [
                   Row(
                     children: [
                       SizedBox(width: 70.0),

                       ButtonTheme(
                         padding: EdgeInsets.all(8.0),
                         minWidth:260.0,
                         height: 60.0,
                         child: Container(
                             padding: EdgeInsets.all(8.0),

                             child:MaterialButton(

                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(18.0),
                                 side: BorderSide(color: Colors.grey[400],width: 2.0),
                               ),
                               color: Colors.grey[400],
                               padding: EdgeInsets.all(8.0),
                               child:Text(widget.character.details
                                   ,  style: TextStyle(color: Colors.white, fontSize: 20 , fontStyle: FontStyle.normal,fontWeight: FontWeight.w300)
                               ),
                               textColor: Colors.black,
                               splashColor: Colors.blue,

                               elevation: 8.0,
                               onPressed: () {
                                 player.play("Mouse-Click.mp3");
                                 Navigator.push
                                   (
                                   context,
                                   MaterialPageRoute(builder: (context) => widget.character.route),
                                 );
                               },
                             )
                         ),
                       ),
                     ],
                   )
                 ],
               )

              ],
            ),
         // ),
        );
      //],
    //);
  }
}