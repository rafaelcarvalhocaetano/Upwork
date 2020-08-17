import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/components/card.dart';
import 'package:upwork/constants/colors.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: uBackground,
        body: Container(
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: borderInput,
                          ),
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.search,
                              color: Theme.of(context).primaryColor,
                            ),
                            suffixIcon: Icon(
                              Icons.border_vertical,
                              color: Theme.of(context).primaryColor,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      child: IconButton(
                        icon: Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                height: 400,
                child: ListView(
                  children: [
                    UpCard()
                  ],
                ),
              )
              
            ],
          ),
        ),
      ),
    );
  }
}
