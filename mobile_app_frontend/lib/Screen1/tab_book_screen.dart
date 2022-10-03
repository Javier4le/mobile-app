import 'package:flutter/material.dart';

class TabBookScreen extends StatelessWidget {
  const TabBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Tab Book Screen',
              style: TextStyle(fontSize: 40, color: Colors.orange.shade800))),
    );
  }
}
