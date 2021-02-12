import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:magazine_apps/widgets/custom_appbar.dart';
import 'package:magazine_apps/widgets/single_article_positioned1.dart';
import 'package:magazine_apps/widgets/single_article_positioned2.dart';

class SingleArticle extends StatefulWidget {
  final String image;
  final String title;
  final String date;
  final Color verticalBorderColor;
  SingleArticle(
      {Key key,
      @required this.image,
      this.title,
      this.date,
      this.verticalBorderColor = Colors.blue})
      : super(key: key);

  @override
  _SingleArticleState createState() => _SingleArticleState();
}

class _SingleArticleState extends State<SingleArticle>
    with SingleTickerProviderStateMixin {
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
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Positioned 1
          SingleArticlePositioned1(
            image: widget.image,
            key: widget.key,
            date: widget.date,
            title: widget.title,
            verticalBorderColor: widget.verticalBorderColor
          ),
          // Positioned 2
          SingleArticlePositioned2(
              image: widget.image,
              key: widget.key,
              date: widget.date,
              title: widget.title,
              verticalBorderColor: widget.verticalBorderColor
          ),
          CustomAppBar(
            popBack: true,
          )
        ],
      ),
    );
  }
}
