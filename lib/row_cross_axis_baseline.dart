import 'package:flutter/material.dart';

class RowCrossAxisBaselinePage extends StatelessWidget {
  const RowCrossAxisBaselinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ferrer Task 3'),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.red,
              child: const Text('Red', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
              child: const Text('Green', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue,
              child: const Text('Blue', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
          ],
        ),
      ),
    );
  }
}
