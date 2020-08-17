import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:upwork/constants/colors.dart';
import 'package:upwork/pages/home.dart';

void main() => runApp(Upwork());

class Upwork extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setEnabledSystemUIOverlays([]);
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      title: 'Up-work',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: uPrimary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Rubik',
      ),
      home: UpworkHomePage(),
    );
  }
}


