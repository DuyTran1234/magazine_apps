import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePagePositioned3 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePagePositioned3(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);
  @override
  _SinglePagePositioned3State createState() {
    return _SinglePagePositioned3State();
  }

}

class _SinglePagePositioned3State extends State<SinglePagePositioned3> with SingleTickerProviderStateMixin {
  List<String> title;
  Animation opacity;
  Animation scaleUp;
  AnimationController animationController;
  Color verticalBorderColor = Colors.blue;

  @override
  void initState() {
    super.initState();

    title = widget.title.split(" ");
    animationController =
    AnimationController(vsync: this, duration: Duration(milliseconds: 1000))
      ..addListener(() {
        setState(() {});
      });
    scaleUp = Tween(begin: Offset(0.0, 20), end: Offset(0.0, 0.0)).animate(
        CurvedAnimation(curve: Curves.easeIn, parent: animationController));
    opacity = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        curve: Interval(0.4, 1.0, curve: Curves.easeIn),
        parent: animationController));
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.reverse();
    animationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height / 2.5,
        child: Transform.translate(
          offset: scaleUp.value,
          child: Opacity(
            opacity: opacity.value,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Text(
                    title[0].toUpperCase(),
                    softWrap: false,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 54,
                        color: Colors.white,
                        letterSpacing: 8,
                        fontFamily: "Butler"),
                  ),
                  Text(
                    title[1].toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Butler"),
                  )
                ],
              ),
            ),
          ),
        ));
  }

}