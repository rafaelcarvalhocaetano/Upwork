import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';
import 'package:upwork/pages/feed_page.dart';

class UpworkHomePage extends StatelessWidget {

  _duratio(context) {
    const temp = Duration(milliseconds: 4000);
    Future.delayed(temp, () => {
      Navigator.push(context, MaterialPageRoute(builder: (x) => FeedPage(),),),
    });
  }

  @override
  Widget build(BuildContext context) {

    _duratio(context);
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: uBackground,
        body: Center(
          child: Image.asset('images/logo.png', width: MediaQuery.of(context).size.height / 4,)
        ),
      ),
    );
  }
}
