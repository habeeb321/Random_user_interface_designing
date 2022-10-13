import 'package:flutter/material.dart';

class QuestionsList extends StatelessWidget {
  const QuestionsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Frequantly asked questions',
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('What types of businesses can use Dukaan\nPremium?'),
              Icon(Icons.remove)
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Dukaan caters toawide variety of sellers.Be it a\nsmall grocery store orabig legacy brand-anyone \nwho wants to sell their products/services online-\nDukaan is the perfect platform for you.',
            style: TextStyle(
              height: 1.5,
            ),
          ),
          const Divider(),
          listTiles3('What is your refund policy?'),
          listTiles3(
              'Will there be an automatic charge after the\npaid trial?'),
          listTiles3('What payment methods do you offer?'),
          listTiles3('What happens when my free trial ends?'),
          listTiles3('What are the terms for the custom domain?'),
          const Divider(
            thickness: 3,
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Need help?Get in touch',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 55, right: 50, top: 25, bottom: 25),
                  child: Column(
                    children: const [
                      Icon(Icons.chat_bubble_outline),
                      Text('Live chat'),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 55, right: 48, top: 25, bottom: 25),
                  child: Column(
                    children: const [
                      Icon(Icons.call_outlined),
                      Text('Phone Call'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            thickness: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(onPressed: () {}, child: const Text('Select Domain')),
              ElevatedButton(onPressed: () {}, child: const Text('Get Premium'))
            ],
          )
        ],
      ),
    );
  }
}


Widget listTiles3(
  String text,
) {
  return Column(
    children: [
      ListTile(
        leading: Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: const Icon(Icons.add),
      ),
      const Divider(),
    ],
  );
}
