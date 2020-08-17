import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:upwork/components/card_bar.dart';
import 'package:upwork/components/card_description.dart';
import 'package:upwork/components/count_spend.dart';
import 'package:upwork/components/item_verified.dart';
import 'package:upwork/components/tag.dart';
import 'package:upwork/constants/colors.dart';

class UpCard extends StatelessWidget {

  String desc =
      'I am looking for a Co-Founder to join me visualize an idea to fruition. The Macro Idea is an Platform BYOB which stands for BeYourOwnBoss will be a social media to give a platform to entrepreneurs and investors and freelancers enhance the way they regularly network and to create for themselves and as our slogan says "Make it Real". I also have a ...';

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 120,
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 5.0, bottom: 5.0,),
                decoration: BoxDecoration(
                  color: uPrimary,
                  borderRadius: BorderRadius.only(
                    topLeft:  Radius.circular(10.0,),
                    bottomRight: Radius.circular(10.0,),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.category,
                      size: 12.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0,),
                    Text(
                      'Featured Job',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 11.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),

// --------------------- CARD BAR -------------------------
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: CardBar(
                  title: 'Hourly - Posted 2 hours ago',
                  description: 'Upwork Redesign Project',
                  functionStart: () {},
                  functionClear: () {},
                ),
              ),
// ---------------------  TAGS ------------------------------------
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Wrap(
                  children: [
                    Tag(
                      tag: 'Less Than 10 hrs/week',
                    ),
                    Tag(
                      tag: 'More Than 6 Month',
                    ),
                    Tag(
                      tag: '\$',
                    ),
                  ],
                ),
              ),
// ---------------------- DESCRIPTION -----------------------------
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: CardDescription(
                  description: desc,
                ),
              ),
// ---------------------- OPTIONS FOOTER --------------------------
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ItemVerified(
                      type: 'Payment Verified',
                    ),
                    CountSpend(
                      count: '10k+',
                      spend: 'Spend',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
