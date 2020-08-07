import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text('CENTER FEED'),
        ),
      ),
    );
  }
}