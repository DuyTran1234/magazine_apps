import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:magazine_apps/pages/single_page_positioned1.dart';
import 'package:magazine_apps/pages/single_page_positioned2.dart';
import 'package:magazine_apps/pages/single_page_positioned3.dart';
import 'package:magazine_apps/pages/single_page_positioned4.dart';
import 'package:magazine_apps/pages/single_page_positioned5.dart';

class SinglePage extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePage(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);

  @override
  _SinglePageState createState() => _SinglePageState();
}

class _SinglePageState extends State<SinglePage>
    with SingleTickerProviderStateMixin {
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
    return Hero(
      tag: widget.image,
      child: Material(
        child: Stack(
          children: <Widget>[
            // Positioned 1
            SinglePagePositioned1(
                key: widget.key,
                image: widget.image,
                title: widget.title,
                date: widget.date,
                offset: widget.offset
            ),
            // Positioned 2
            SinglePagePositioned2(
                key: widget.key,
                image: widget.image,
                title: widget.title,
                date: widget.date,
                offset: widget.offset
            ),
            // Positioned 3
            SinglePagePositioned3(
                key: widget.key,
                image: widget.image,
                title: widget.title,
                date: widget.date,
                offset: widget.offset
            ),
            // Positioned 4
            SinglePagePositioned4(
                key: widget.key,
                image: widget.image,
                title: widget.title,
                date: widget.date,
                offset: widget.offset
            ),
            // Positioned 5
            SinglePagePositioned5(
                key: widget.key,
                image: widget.image,
                title: widget.title,
                date: widget.date,
                offset: widget.offset
            ),
          ],
        ),
      ),
    );
  }
}
