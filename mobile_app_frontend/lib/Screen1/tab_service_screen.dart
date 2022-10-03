import 'package:flutter/material.dart';

class TabServiceScreen extends StatelessWidget {
  const TabServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Tab Service Screen',
              style: TextStyle(fontSize: 40, color: Colors.orange.shade800))),
    );
  }
}
