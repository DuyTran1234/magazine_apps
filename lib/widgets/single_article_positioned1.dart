import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleArticlePositioned1 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final Color verticalBorderColor;
  SingleArticlePositioned1(
      {Key key,
        @required this.image,
        this.title,
        this.date,
        this.verticalBorderColor = Colors.blue})
      : super(key: key);

  @override
  _SingleArticlePositioned1State createState() {
    return _SingleArticlePositioned1State();
  }
}

class _SingleArticlePositioned1State extends State<SingleArticlePositioned1> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      child: Hero(
        tag: widget.image,
        child: Image(
          image: AssetImage("images/${widget.image}"),
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height / 2 - 40,
          width: MediaQuery.of(context).size.width,
        ),
      ),
    );
  }

}