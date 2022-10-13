import 'package:flutter/material.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Transaction Limit',
              style: TextStyle(fontWeight: FontWeight.w700),
            ),
            const Text(
                'A free limit up to which you will recieve \nthe online payments directly in your bank.'),
            const SizedBox(
              height: 5,
            ),
            const LinearProgressIndicator(
              value: 0.3,
            ),
            const Text('36,668 left out of \u{20B9}${50000}'),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 25,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.indigo,
              ),
              child: const Center(
                child: Text(
                  'Increase limit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
