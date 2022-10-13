import 'package:flutter/material.dart';
import 'package:week_6/screens/fifthscreen/fifth_ui.dart';
import 'package:week_6/screens/fourthscreen/dukaan_card.dart';
import 'package:week_6/screens/fourthscreen/features_list.dart';
import 'package:week_6/screens/fourthscreen/questions_list.dart';

class FourthUi extends StatelessWidget {
  const FourthUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 150,
                child: AppBar(
                  title: const Text('Dukaan Premium'),
                  centerTitle: true,
                  leading: const Icon(Icons.arrow_back),
                  actions: [
                    IconButton(
                      onPressed: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FifthUi(),
                          ),
                        );
                      }),
                      icon: const Icon(Icons.arrow_forward),
                    )
                  ],
                ),
              ),
              const DukaanCard(),
            ],
          ),
          const FeaturesList(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.asset('assets/images/download7.png'),
                const Divider(
                  height: 20,
                ),
              ],
            ),
          ),
          const QuestionsList(),
        ],
      ),
    );
  }
}

