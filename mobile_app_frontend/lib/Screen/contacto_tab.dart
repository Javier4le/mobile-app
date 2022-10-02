import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ContactoTab extends StatelessWidget {
  //const ContactoTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Expanded(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(labelText: ' Nombre'),
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(labelText: ' Email'),
                ),
                TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: ' Edad'),
                ),
                Container(
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
