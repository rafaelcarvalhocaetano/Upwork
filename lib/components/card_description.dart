import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';

class CardDescription extends StatefulWidget {
  
  final String description;

  const CardDescription({Key key, this.description}) : super(key: key);

  @override
  _CardDescriptionState createState() => _CardDescriptionState();
}

class _CardDescriptionState extends State<CardDescription> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 10.0,
              right: 10.0,
              top: 5.0,
              bottom: 5.0,
            ),
            decoration: BoxDecoration(
              color: uBackground,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Text(
              'More',
              style: TextStyle(
                fontSize: 12.0, fontWeight: FontWeight.bold, color: uPrimary,
              ),
            ),
          ),
          Text(
            widget.description,
            maxLines: 7,
            textAlign: TextAlign.justify,
            style: TextStyle(
              height: 1.7,
              fontSize: 12.0,
              textBaseline: TextBaseline.alphabetic,
              color: uFontGrey,
            ),
          ),
        ],
      ),
    );
  }
}
