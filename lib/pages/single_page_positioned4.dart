import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SinglePagePositioned4 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePagePositioned4(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);
  @override
  _SinglePagePositioned4State createState() {
    return _SinglePagePositioned4State();
  }

}

class _SinglePagePositioned4State extends State<SinglePagePositioned4> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height / 5,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        margin: EdgeInsets.symmetric(horizontal: 20),
        height: 0.8,
        color: Colors.white,
      ),
    );
  }

}