import 'package:flutter/material.dart';

class TabHomeScreen extends StatelessWidget {
  const TabHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Tab Home Screen',
              style: TextStyle(fontSize: 40, color: Colors.orange.shade800))),
    );
  }
}
