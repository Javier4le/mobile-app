import 'package:flutter/material.dart';

class GamesCard extends StatelessWidget {
//  const GamesCard({Key? key}) : super(key: key);

  late String _image, _name, _price;

  GamesCard({String? image, String? name, String? price}) {
    this._image = image!;
    this._name = name!;
    this._price = price!;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 7000,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.red),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        children: [
          Image(image: AssetImage('assets/images/$_image')),
          Container(
            child: Column(
              children: [
                Text('$_name',
                    style: TextStyle(fontSize: 32, color: Colors.redAccent)),
                Text('$_price',
                    style: TextStyle(fontSize: 25, color: Colors.blue)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
