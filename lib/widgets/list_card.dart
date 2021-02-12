import 'package:flutter/material.dart';

import 'list_card_additional2.dart';
import 'list_card_addtional1.dart';

class ListCard extends StatelessWidget {
  final String image;
  final String title;
  final String date;
  final bool inverted;
  const ListCard(
      {Key key, this.image, this.title, this.date, this.inverted = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!inverted) {
      return ListCardAdditional1(
          key: this.key,
          image: this.image,
          title: this.title,
          date: this.date,
          inverted: this.inverted
      );
    } else {
      return ListCardAdditional2(
          key: this.key,
          image: this.image,
          title: this.title,
          date: this.date,
          inverted: this.inverted
      );
    }
  }
}
