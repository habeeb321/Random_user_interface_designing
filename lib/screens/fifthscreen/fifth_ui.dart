import 'package:flutter/material.dart';
import 'package:week_6/screens/sixthscreen/sixth_ui.dart';

class FifthUi extends StatelessWidget {
  const FifthUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order #1688068'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => SixthUi()));
            },
            icon: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('May 31, 05:42 PM'),
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 6.0,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Delivered'),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            dividers(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('1 ITEM'),
                Row(
                  children: const [
                    Icon(
                      Icons.receipt,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'RECEIPT',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset('assets/images/download (2).jfif'),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Explore | Men | Navy Blue'),
                  const Text(
                    '1 Piece',
                    style: TextStyle(fontSize: 14),
                  ),
                  const Text(
                    'Size: XL',
                    style: TextStyle(fontSize: 14),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            side: const BorderSide(color: Colors.blue),
                            backgroundColor: Colors.white,
                            minimumSize: const Size.square(0),
                            fixedSize: const Size(40, 25)),
                        child: const Text(
                          '1',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                      const Text('  X ₹799'),
                      const SizedBox(
                        width: 160,
                      ),
                      const Text('₹799'),
                    ],
                  ),
                ],
              ),
            ),
            dividers(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [subText('Item Total'), subText('₹799')],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                subText('Delivery'),
                const Text(
                  'FREE',
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [mainText('Grand Total'), mainText('₹799')],
            ),
            const SizedBox(
              height: 10,
            ),
            dividers(),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'CUSTOMER DETAILS',
                  style: TextStyle(color: Colors.black38),
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.share_outlined,
                      color: Colors.blue,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'SHARE',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text2('Deepa'),
                    const SizedBox(
                      height: 8,
                    ),
                    text3('+91-7829000484'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 2),
                          backgroundColor: Colors.white,
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(4)),
                      child: const Icon(
                        Icons.call,
                        color: Colors.blue,
                      ),
                    ),
                    const Icon(
                      Icons.whatsapp,
                      color: Colors.green,
                      size: 40,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text2('Address'),
                const SizedBox(
                  height: 5,
                ),
                text3('D 1101 Chartered Beverly \nHills,Subramanyapura P.O')
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text2('City'),
                    const SizedBox(
                      height: 5,
                    ),
                    text3('Bangalore'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text2('Pincode'),
                    const SizedBox(
                      height: 5,
                    ),
                    text3('560061'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text2(''),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text2('Payment'),
                    const SizedBox(
                      height: 5,
                    ),
                    text3('Online'),
                  ],
                ),
                Container(
                  width: 50,
                  height: 20,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 164, 238, 167),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                    child: Text(
                      'PAID',
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 112, 7),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            dividers(),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'ADDITIONAL INFORMATION',
              style: TextStyle(color: Colors.black38),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text2('State'),
                const SizedBox(
                  height: 5,
                ),
                text3('Karnataka'),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text2('Email'),
                const SizedBox(
                  height: 5,
                ),
                text3('greeniceaqua@gmail.com'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  side: const BorderSide(
                      color: Colors.blue, style: BorderStyle.solid, width: 2),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.white),
              child: const Text(
                'Share receipt',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget dividers() {
  return const Divider(
    thickness: 2,
  );
}

Widget subText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15),
  );
}

Widget mainText(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}

Widget text2(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
  );
}

Widget text3(String text) {
  return Text(
    text,
    style: const TextStyle(fontSize: 15),
  );
}
