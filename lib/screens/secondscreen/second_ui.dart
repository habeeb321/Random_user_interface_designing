import 'package:flutter/material.dart';
import 'package:week_6/screens/secondscreen/cards.dart';
import 'package:week_6/screens/thirdscreen/third_ui.dart';

class SecondUi extends StatefulWidget {
  const SecondUi({super.key});

  @override
  State<SecondUi> createState() => _SecondUiState();
}

class _SecondUiState extends State<SecondUi> {
  int currentselectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Store'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirdUi(),
                  ),
                );
              },
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        ],
      ),
      body: const Cards(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentselectedindex,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.blue,
        onTap: (newIndex) {
          setState(() {
            currentselectedindex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.grid_view), label: 'Products'),
          BottomNavigationBarItem(
              icon: Icon(Icons.reorder_outlined), label: 'Manage'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined), label: 'Account'),
        ],
      ),
    );
  }
}
