import 'package:flutter/cupertino.dart';

class SinglePagePositioned1 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePagePositioned1(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);
  @override
  _SinglePagePositioned1State createState() {
    return _SinglePagePositioned1State();
  }

}

class _SinglePagePositioned1State extends State<SinglePagePositioned1> {
  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image(
        image: AssetImage("images/${widget.image}"),
        fit: BoxFit.fitHeight,
        alignment: Alignment(-widget.offset.abs(), 0),
      ),
    );
  }

}