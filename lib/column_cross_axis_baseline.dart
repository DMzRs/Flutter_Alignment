import 'package:flutter/material.dart';

class ColumnCrossAxisBaselinePage extends StatelessWidget {
  const ColumnCrossAxisBaselinePage({super.key});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.red,
              child: const Text('Red', style: TextStyle(color: Colors.white)),
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
              child: const Text('Green', style: TextStyle(color: Colors.white)),
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue,
              child: const Text('Blue', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
