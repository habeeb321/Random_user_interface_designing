import 'package:flutter/material.dart';
import 'package:week_6/screens/secondscreen/cardfourthraw.dart';
import 'package:week_6/screens/secondscreen/cardfirstraw.dart';
import 'package:week_6/screens/secondscreen/cardsecondraw.dart';
import 'package:week_6/screens/secondscreen/cardthirdraw.dart';

class Cards extends StatelessWidget {
  const Cards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(13.0),
      child: Column(
        children: const [
          CardFirstRaw(),
          SizedBox(
            height: 10,
          ),
          CardSecondRaw(),
          SizedBox(
            height: 10,
          ),
          CardThirdRaw(),
          SizedBox(height: 10),
          CardFourthRaw(),
        ],
      ),
    );
  }
}
