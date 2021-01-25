import 'package:flutter/cupertino.dart';
import 'package:ninjaid/learn/5a2.dart';
import 'package:ninjaid/learn/7a2.dart';
import 'package:ninjaid/learn/alef.dart';
import 'package:ninjaid/learn/ba2.dart';
import 'package:ninjaid/learn/dal.dart';
import 'package:ninjaid/learn/gem.dart';
import 'package:ninjaid/learn/ra2.dart';
import 'package:ninjaid/learn/sa2.dart';
import 'package:ninjaid/learn/seen.dart';
import 'package:ninjaid/learn/ta2.dart';
import 'package:ninjaid/learn/zal.dart';
import 'package:ninjaid/learn/zen.dart';
import 'package:ninjaid/learn/shen.dart';
import 'package:ninjaid/learn/sad.dart';
import 'package:ninjaid/learn/dad.dart';
import 'package:ninjaid/learn/za2.dart';
import 'package:ninjaid/learn/Tta2.dart';
import 'package:ninjaid/learn/3een.dart';
import 'package:ninjaid/learn/gheen.dart';
import 'package:ninjaid/learn/fa2.dart';
import 'package:ninjaid/learn/qaf.dart';
import 'package:ninjaid/learn/kaf.dart';
import 'package:ninjaid/learn/lam.dart';
import 'package:ninjaid/learn/meem.dart';
import 'package:ninjaid/learn/noon.dart';
import 'package:ninjaid/learn/ha2.dart';
import 'package:ninjaid/learn/waw.dart';
import 'package:ninjaid/learn/yaa2.dart';

class Character {
  final String image;
  final String title;
  final String sound;
  final String details;
  final Widget route;



  Character({
    this.image,
    this.title,
    this.sound,
    this.details,
    this.route,


  });
}

final characters = <Character>[
  Character(
    title: "حرف الألف",
    image: "assets/letters/1.png",
    sound:  "Alef.m4a",
    details: "كلمات بحرف الألف",
    route: alef(),



  ),
  Character(
    title: "حرف الباء",
    image: "assets/letters/2.png",
    sound:  "Ba2.m4a",
      details: "كلمات بحرف الباء",
      route: ba2(),


  ),
  Character(
    title: "حرف التاء",
    image: "assets/letters/3.png",
    sound:  "Ta2.m4a",
      details: "كلمات بحرف التاء",
      route: ta2(),


  ),
  Character(
    title: "حرف الثاء",
    image: "assets/letters/4.png",
    sound:  "Tha2.m4a",
      details: "كلمات بحرف الثاء",
      route: sa2(),


  ),
  Character(
    title: "حرف الجيم",
    image: "assets/letters/5.png",
    sound:  "Gem.m4a",
      details: "كلمات بحرف الجيم",
      route: gem(),


  ),
  Character(
    title: "حرف الحاء",
    image: "assets/letters/6.png",
    sound:  "7a2.m4a",
      details: "كلمات بحرف الحاء",
      route: ha2(),


  ),
  Character(
    title: "حرف الخاء",
    image: "assets/letters/7.png",
    sound:  "5a2.m4a",
      details: "كلمات بحرف الخاء",
      route: kha2(),


  ),
  Character(
    title: "حرف الدال",
    image: "assets/letters/8.png",
    sound:  "Dal.m4a",
      details: "كلمات بحرف الدال",
      route: dal(),


  ),
  Character(
    title: "حرف الذال",
    image: "assets/letters/9.png",
    sound:  "Zal.m4a",
      details: "كلمات بحرف الذال",
      route: zal(),


  ),
  Character(
    title: "حرف الراء",
    image: "assets/letters/10.png",
    sound:  "Ra2.m4a",
      details: "كلمات بحرف الراء",
      route: ra2(),


  ),
  Character(
    title: "حرف الزاء",
    image: "assets/letters/28.png",
    sound:  "Zen.m4a",
      details: "كلمات بحرف الزاء",
      route: zen(),


  ),
  Character(
    title: "حرف السين",
    image: "assets/letters/11.png",
    sound:  "Seen.m4a",
      details: "كلمات بحرف السين",
      route: seen(),


  ),
  Character(
    title: "حرف الشين",
    image: "assets/letters/12.png",
    sound:  "Sheen.m4a",
      details: "كلمات بحرف الشين",
      route: sheen(),


  ),
  Character(
    title: "حرف الصاد",
    image: "assets/letters/13.png",
    sound:  "Sad.m4a",
      details: "كلمات بحرف الصاد",
      route: sad(),


  ),
  Character(
    title: "حرف الضاد",
    image: "assets/letters/27.png",
    sound:  "Dad.m4a",
      details: "كلمات بحرف الضاد",
      route: dad(),


  ),
  Character(
    title: "حرف الطاء",
    image: "assets/letters/14.png",
    sound:  "Tta2.m4a",
      details: "كلمات بحرف الطاء",
      route: tta2(),


  ),
  Character(
    title: "حرف الظاء",
    image: "assets/letters/15.png",
    sound:  "Zah.m4a",
      details: "كلمات بحرف الظاء",
      route: za2(),


  ),
  Character(
    title: "حرف العين",
    image: "assets/letters/16.png",
    sound:  "3een.m4a",
      details: "كلمات بحرف العين",
      route: ain(),


  ),
  Character(
    title: "حرف الغين",
    image: "assets/letters/17.png",
    sound:  "Gheen.m4a",
      details: "كلمات بحرف الغين",
      route: gheen(),


  ),
  Character(
    title: "حرف الفاء",
    image: "assets/letters/18.png",
    sound:  "Fa2.m4a",
      details: "كلمات بحرف الفاء",
      route: fa2(),


  ),
  Character(
    title: "حرف القاف",
    image: "assets/letters/19.png",
    sound:  "Qaf.m4a",
      details: "كلمات بحرف القاف",
      route: qaf(),


  ),
  Character(
    title: "حرف الكاف",
    image: "assets/letters/20.png",
    sound:  "Kaf.m4a",
      details: "كلمات بحرف الكاف",
      route: kaf(),


  ),
  Character(
    title: "حرف اللام",
    image: "assets/letters/21.png",
    sound:  "Lam.m4a",
      details: "كلمات بحرف اللام",
      route: lam(),

  ),
  Character(
    title: "حرف الميم",
    image: "assets/letters/22.png",
    sound:  "Meem.m4a",
      details: "كلمات بحرف الميم",
      route: meem(),


  ),
  Character(
    title: "حرف النون",
    image: "assets/letters/23.png",
    sound:  "Noon.m4a",
      details: "كلمات بحرف النون",
      route: noon(),


  ),
  Character(
    title: "حرف الهاء",
    image: "assets/letters/24.png",
    sound:  "Ha2.m4a",
      details: "كلمات بحرف الهاء",
      route: hha2(),


  ),
  Character(
    title: "حرف الواو",
    image: "assets/letters/25.png",
    sound:  "Waw.m4a",
      details: "كلمات بحرف الواو",
      route: waaw(),


  ),
  Character(
    title: "حرف الياء",
    image: "assets/letters/26.png",
    sound:  "Yaa2.m4a",
      details: "كلمات بحرف الياء",
      route: yaa2(),


  ),

];