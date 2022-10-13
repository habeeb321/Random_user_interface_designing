import 'package:flutter/material.dart';
import 'package:week_6/screens/secondscreen/second_ui.dart';

class FirstUi extends StatefulWidget {
  const FirstUi({super.key});

  @override
  State<FirstUi> createState() => _FirstUiState();
}

class _FirstUiState extends State<FirstUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Additonal Information'),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondUi(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.share),
            title: Text('Share Dukaan App'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          const ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Change Language'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          ListTile(
              leading: const Icon(Icons.whatsapp),
              title: const Text('Whatsapp Chat Support'),
              trailing: Switch(value: true, onChanged: (bool value) {})),
          const ListTile(
            leading: Icon(Icons.lock_outline),
            title: Text('Privacy Policy'),
          ),
          const ListTile(
            leading: Icon(Icons.star_border_outlined),
            title: Text('Rate Us'),
          ),
          const ListTile(
            leading: Icon(Icons.logout),
            title: Text('Sign Out'),
          ),
        ],
      ),
    );
  }
}
