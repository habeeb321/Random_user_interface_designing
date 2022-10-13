import 'package:flutter/material.dart';

class FeaturesList extends StatelessWidget {
  const FeaturesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Features',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          const SizedBox(
            height: 10,
          ),
          listTile2(const Icon(Icons.language_outlined), 'Custom domain name',
              'Get your own custom domain and build\nyour brand on the internet'),
          listTile2(
              const Icon(Icons.verified_outlined),
              'Verified seller badge',
              'Get green verified badge under your\nstore name and build trust'),
          listTile2(const Icon(Icons.computer), 'Dukaan for PC',
              'Access all the exclusive premium\nfeatures on Dukaan for PC.'),
          listTile2(const Icon(Icons.headset_mic_outlined), 'Priority support',
              'Get your questions resolved with our\npriority customer support.'),
          const SizedBox(
            height: 10,
          ),
          const Divider(thickness: 1),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'What is Dukaan Premium?',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}


Widget listTile2(Icon icon, String title, String subtitle) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 25.0,
            child: CircleAvatar(
              backgroundColor: Colors.white,
              // ignore: sort_child_properties_last
              child: icon,
              radius: 23.0,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(subtitle),
            ],
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      )
    ],
  );
}