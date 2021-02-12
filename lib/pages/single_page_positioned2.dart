import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePagePositioned2 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePagePositioned2(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);
  @override
  _SinglePagePositioned2State createState() {
    return _SinglePagePositioned2State();
  }

}

class _SinglePagePositioned2State extends State<SinglePagePositioned2> {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.5),
            Colors.transparent
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
      ),
    );
  }

}