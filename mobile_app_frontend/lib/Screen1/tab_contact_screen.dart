import 'package:flutter/material.dart';

class TabContactScreen extends StatelessWidget {
  const TabContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('Tab Contact Screen',
              style: TextStyle(fontSize: 40, color: Colors.orange.shade800))),
    );
  }
}
