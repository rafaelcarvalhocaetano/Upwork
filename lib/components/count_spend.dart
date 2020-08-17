import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';

class CountSpend extends StatelessWidget {

  final String count;
  final String spend;

  const CountSpend({Key key, this.count, this.spend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0,),
        decoration: BoxDecoration(
          color: uBackground,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Row(
          children: [
            Text(
              count,
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
                color: uFontPrimary,
              ),
            ),
            SizedBox(width: 5.0,),
            Text(
              spend,
              style: TextStyle(
                fontSize: 11.0,
                fontWeight: FontWeight.bold,
                color: uFontGrey,
              ),
            ),
          ],
        ),
      );
  }
}