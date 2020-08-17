import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/constants/card_style.dart';
import 'package:upwork/constants/colors.dart';

class CardBar extends StatefulWidget {

  final String title;
  final String description;
  final Function functionStart;
  final Function functionClear;

  const CardBar(
      {Key key,
      this.title,
      this.description,
      this.functionStart,
      this.functionClear})
      : super(key: key);

  @override
  _CardBarState createState() => _CardBarState();
}

class _CardBarState extends State<CardBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: textTitle,
            ),
            Text(
              widget.description,
              style: textDescription(Theme.of(context).primaryColor),
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 10.0,),
              decoration: BoxDecoration(
                color: uBackground,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.star,
                  color: uIconColor,
                ),
                onPressed: widget.functionStart,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: uBackground,
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: uIconColor,
                ),
                onPressed: widget.functionClear,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
