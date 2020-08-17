import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';

class ItemVerified extends StatelessWidget {

  final String type;

  const ItemVerified({Key key, this.type}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
        top: 5.0,
        bottom: 5.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: uBlue,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.white,
            ),
            child: Icon(
              Icons.check,
              color: uBlue,
              size: 12.0,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Text(
            type,
            style: TextStyle(
              fontSize: 11.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
