import 'package:flutter/material.dart';

class ColumnCrossAxisEndPage extends StatelessWidget {
  const ColumnCrossAxisEndPage({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: 90,
              height: 90,
              color: Colors.red,
            ),
            Container(
              width: 80,
              height: 80,
              color: Colors.green,
            ),
            Container(
              width: 70,
              height: 70,
              color: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
