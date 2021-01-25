import 'package:flutter/material.dart';
import 'package:ninjaid/character.dart';
import 'package:ninjaid/letters_detail.dart';

class ListPage1 extends StatefulWidget {
  @override
  _ListPage1State createState() => _ListPage1State();
}

class _ListPage1State extends State<ListPage1> {

  PageController _controller;

  _goToDetail(Character character) {
    final page = DetailPage(character: character);
    Navigator.of(context).push(
      PageRouteBuilder<Null>(
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secondaryAnimation) {
            return AnimatedBuilder(
                animation: animation,
                builder: (BuildContext context, Widget child) {
                  return Opacity(
                    opacity: animation.value,
                    child: page,
                  );
                });
          },
          transitionDuration: Duration(milliseconds: 400)),
    );
  }

  _pageListener() {
    setState(() {});
  }

  @override
  void initState() {
    _controller = PageController(viewportFraction: 0.6);
    _controller.addListener(_pageListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(_pageListener);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.8,
        //automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.grey,
        title: Text("أحرف اللغة العربية ",
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.justify,
            style: TextStyle(color: Colors.white, fontSize: 30,fontStyle: FontStyle.normal,fontWeight: FontWeight.w200)),
      ),

      body: PageView.builder(

          scrollDirection: Axis.vertical,
          controller: _controller,
          itemCount: characters.length,
          itemBuilder: (context, index) {
            double currentPage = 0;
            try {
              currentPage = _controller.page;
            } catch (_) {}

            final resizeFactor = (1 - (((currentPage - index).abs() * 0.3).clamp(0.0, 1.0)));
            final currentCharacter = characters[index];

            return ListItem(
              character: currentCharacter,
              resizeFactor: resizeFactor,
              onTap: () => _goToDetail(currentCharacter),
            );
          }),
    );
  }
}

class ListItem extends StatelessWidget {
  final Character character;
  final double resizeFactor;
  final VoidCallback onTap;

  const ListItem({
    Key key,
    @required this.character,
    @required this.resizeFactor,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height * 0.4;
    double width = MediaQuery.of(context).size.width * 0.85;

    return InkWell(
      onTap: onTap,
      child: Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: width * resizeFactor,
            height: height * resizeFactor,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: height / 4,
                  bottom: 0,
                  child: Hero(
                    tag: "title_${character.title}",
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                               colors: [
                               Color(0xFFFFFF),
                                 Colors.white,
                                ],
                               /* stops: [
                                  0.4,
                                  1.0,
                                ]*/
                            )),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 20,
                            bottom: 10,
                          ),
                          child: Text(
                            character.title,
                            style: TextStyle(
                              fontSize: 24 * resizeFactor,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Hero(
                    tag: "image_${character.image}",
                    child: Image.asset(
                      character.image,
                      width: width / 2,
                      height: height,
                      scale: 2.0,
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}