import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magazine_apps/widgets/single_article_positioned2.dart';
import '../mock.dart';

class SingleArticlePositioned2Additional extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final Color verticalBorderColor;
  final Animation translateUpText;
  final Animation opacityText;

  SingleArticlePositioned2Additional(
      {Key key,
        @required this.image,
        this.title,
        this.date,
        this.verticalBorderColor = Colors.blue,
        this.translateUpText,
        this.opacityText,
      })
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _SingleArticlePositioned2AdditionalState();
  }
}

class _SingleArticlePositioned2AdditionalState extends State<SingleArticlePositioned2Additional> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 3,
          height: 50,
          color: widget.verticalBorderColor,
        ),
        SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              widget.date.toUpperCase(),
              style: TextStyle(fontSize: 16, letterSpacing: 2),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200,
              child: Text(
                widget.title.toUpperCase(),
                style:
                TextStyle(fontFamily: "Butler", fontSize: 40),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Transform.translate(
              offset: widget.translateUpText.value,
              child: Opacity(
                opacity: widget.opacityText.value,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width:
                      MediaQuery.of(context).size.width / 1.5,
                      child: Text(
                        SINGLE_ARTICLE_CHUNK_1.trim(),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: 280,
                      child: Text(
                        SINGLE_ARTICLE_CHUNK_2.trim(),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: <Widget>[
                Text(
                  "02",
                  style: TextStyle(
                      fontFamily: "Butler",
                      fontSize: 28,
                      color: Colors.black),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  width: 40,
                  height: 2,
                  color: Colors.black,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}