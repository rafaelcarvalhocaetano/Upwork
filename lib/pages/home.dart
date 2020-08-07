import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/constants/colors.dart';

class UpworkHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: uBackground,
        body: Center(
          child: Image.asset('images/logo.png',)
        ),
      ),
    );
  }
}
