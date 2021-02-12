import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magazine_apps/pages/single_article.dart';
import 'package:route_transitions/route_transitions.dart';

class SinglePagePositioned5 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final double offset;
  SinglePagePositioned5(
      {Key key, @required this.image, this.title, this.date, this.offset})
      : super(key: key);
  @override
  _SinglePagePositioned5State createState() {
    return _SinglePagePositioned5State();
  }
}

class _SinglePagePositioned5State extends State<SinglePagePositioned5> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height / 20,
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "03",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Butler",
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 40,
                      color: Colors.white,
                      height: 0.8,
                    )
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 40,
                      color: Colors.white,
                      height: 0.8,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "06",
                      style: TextStyle(
                          fontSize: 28,
                          fontFamily: "Butler",
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(PageRouteTransition(
                    animationType: AnimationType.fade,
                    builder: (BuildContext context) => SingleArticle(
                      image: widget.image,
                      title: widget.title,
                      date: widget.date,
                      verticalBorderColor: Colors.blue,
                    )));
              },
              child: Container(
                width: 120,
                child: Text(
                  "read article".toUpperCase(),
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontFamily: "Butler"),
                  textAlign: TextAlign.end,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}