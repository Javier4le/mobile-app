import 'package:flutter/material.dart';

class TabImageScreen extends StatelessWidget {
  const TabImageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Tab Image Screen',
              style: TextStyle(fontSize: 40, color: Colors.orange.shade800))),
    );
  }
}
