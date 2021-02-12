import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListCardAdditional2 extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final bool inverted;
  const ListCardAdditional2(
      {Key key, this.image, this.title, this.date, this.inverted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      elevation: 0.0,
      child: Container(
        color: Colors.white,
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 2,
                  height: 40,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 10,
                          height: 2,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(date.toUpperCase(),
                            style: TextStyle(fontSize: 14)),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      width: 140,
                      child: Text(
                        title.toUpperCase().trim(),
                        style: TextStyle(fontFamily: "Butler", fontSize: 26),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text("read article".toUpperCase())
                  ],
                )
              ],
            ),
            Image(
              image: AssetImage("images/$image"),
              height: 150,
              fit: BoxFit.cover,
              width: 140,
            ),
          ],
        ),
      ),
    );
  }
}