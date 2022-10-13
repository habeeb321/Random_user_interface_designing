import 'package:flutter/material.dart';
import 'package:week_6/screens/fourthscreen/fourth_ui.dart';
import 'package:week_6/screens/thirdscreen/transaction_card.dart';

class ThirdUi extends StatelessWidget {
  const ThirdUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FourthUi(),
                  ),
                );
              },
              icon: const Icon(Icons.info_outlined),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const TransactionCard(),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: const [
                    Text('Default Method'),
                    SizedBox(
                      width: 145,
                    ),
                    Text(
                      'Online Payments',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black45,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text('Payment Profile'),
                    SizedBox(
                      width: 162,
                    ),
                    Text(
                      'Bank Account',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colors.black45,
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text('Payments Overview'),
                    SizedBox(
                      width: 167,
                    ),
                    Text(
                      'Life Time',
                      style: TextStyle(color: Colors.black38),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black45,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: Card(
                        color: Colors.orange,
                        child: Center(
                          child: Text(
                            'AMOUNT ON HOLD \n\u{20B9}${0}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 180,
                      height: 50,
                      child: Card(
                        color: Colors.green,
                        child: Center(
                          child: Text(
                            'AMOUNT RECIEVED \n\u{20B9}${13332}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Transactions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: (() {}),
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 207, 202, 202),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text('On hold'),
                    ),
                    ElevatedButton(
                        onPressed: (() {}),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text('Payouts(15)')),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 207, 202, 202),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30))),
                        child: const Text('Refunds'))
                  ],
                ),
                listTiles(
                    'Order #1688068',
                    'jul 12 02:04 PM',
                    '₹799',
                    '799 deposited to 65959595959599',
                    Image.asset('assets/images/download.jfif')),
                const Divider(),
                listTiles(
                    'Order #145768',
                    'Apr 21 03:01 Am',
                    '3974.4',
                    '3974.4 deposited to 65959595959599',
                    Image.asset('assets/images/download (1).jfif')),
                listTiles(
                    'Order #1688068',
                    'jul 12 02:04 PM',
                    '₹799',
                    '799 deposited to 65959595959599',
                    Image.asset('assets/images/download (2).jfif')),
                const Divider(),
                listTiles(
                    'Order #145768',
                    'Apr 21 03:01 Am',
                    '3974.4',
                    '3974.4 deposited to 65959595959599',
                    Image.asset('assets/images/download (3).jfif')),
                const Divider(),
                listTiles(
                    'Order #1688068',
                    'jul 12 02:04 PM',
                    '₹799',
                    '799 deposited to 65959595959599',
                    Image.asset('assets/images/download (4).jfif')),
                const Divider(),
                listTiles(
                    'Order #145768',
                    'Apr 21 03:01 Am',
                    '3974.4',
                    '3974.4 deposited to 65959595959599',
                    Image.asset('assets/images/download (5).jfif'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}


Widget listTiles(
    String order, String subtitle, String amount, String status, Image img) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          SizedBox(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: img,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(order), Text(subtitle)],
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(amount),
                    Row(
                      children: const [
                        Icon(
                          Icons.noise_control_off_rounded,
                          color: Colors.green,
                        ),
                        Text('Successfull'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      Text(
        status,
        style: const TextStyle(fontSize: 10),
      ),
    ],
  );
}

