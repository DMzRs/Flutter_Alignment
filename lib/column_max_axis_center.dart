import 'package:flutter/material.dart';

class ColumnMaxAxisCenterPage extends StatelessWidget {
  const ColumnMaxAxisCenterPage({super.key});

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
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
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
          ]
        )
      )
    );
  }
}