import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';

class Tag extends StatefulWidget {

  final String tag;

  Tag({this.tag});

  @override
  _TagState createState() => _TagState();
}

class _TagState extends State<Tag> {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 5.0, top: 5.0,),
        decoration: BoxDecoration(
          color: uBackground,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Text(
          widget.tag,
          style: TextStyle(
            color: uFontPrimary,
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
  }
}