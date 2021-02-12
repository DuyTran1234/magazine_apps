import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magazine_apps/widgets/single_article_positioned2_row_child.dart';

import '../mock.dart';

class SingleArticlePositioned2 extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final Color verticalBorderColor;

  SingleArticlePositioned2(
      {Key key,
        @required this.image,
        this.title,
        this.date,
        this.verticalBorderColor = Colors.blue,
      })
      : super(key: key);
  @override
  _SingleArticlePositioned2State createState() {
    return _SingleArticlePositioned2State();
  }

}

class _SingleArticlePositioned2State extends State<SingleArticlePositioned2> with SingleTickerProviderStateMixin {
  Animation opacityContainer;
  Animation translateDownContainer;
  Animation translateUpText;
  Animation opacityText;
  AnimationController animationController;
  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 800),
    )..addListener(() {
      setState(() {});
    });
    translateDownContainer =
        Tween(begin: Offset(0.0, 20), end: Offset(0.0, 0.0)).animate(
            CurvedAnimation(curve: Curves.easeIn, parent: animationController));
    opacityContainer = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        curve: Interval(0.4, 0.7, curve: Curves.easeIn),
        parent: animationController));
    translateUpText = Tween(begin: Offset(0.0, -20), end: Offset(0.0, 0.0))
        .animate(CurvedAnimation(
      curve: Interval(0.7, 1.0, curve: Curves.easeIn),
      parent: animationController,
    ));
    opacityText = Tween(begin: 0.0, end: 1.0).animate(CurvedAnimation(
        curve: Interval(0.8, 0.9, curve: Curves.easeIn),
        parent: animationController));
    animationController.forward();
  }
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 2 - 100,
      left: 20,
      child: Transform.translate(
        offset: translateDownContainer.value,
        child: Opacity(
          opacity: opacityContainer.value,
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 40),
            child: SingleArticlePositioned2Additional(
                image: widget.image,
                key: widget.key,
                date: widget.date,
                title: widget.title,
                verticalBorderColor: widget.verticalBorderColor,
                opacityText: this.opacityText,
                translateUpText: this.translateUpText,
            ),
          ),
        ),
      ),
    );
  }
}