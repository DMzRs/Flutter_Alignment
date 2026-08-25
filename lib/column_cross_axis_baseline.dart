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
              color: Colors.red,
              child: const Text('Red', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            Container(
              color: Colors.green,
              child: const Text('Green', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            Container(
              color: Colors.blue,
              child: const Text('Blue', style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
          ],
        ),
      ),
    );
  }
}
