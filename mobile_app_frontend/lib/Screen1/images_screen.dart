import 'package:flutter/material.dart';
import 'package:mobile_app_frontend/widgets/games_cards.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Images Screen',
          style:
              TextStyle(fontSize: 32, color: Color.fromARGB(255, 17, 0, 255)),
        ),
        leading: Icon(Icons.image_sharp, color: Colors.white),
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: ListView(
          children: [
            GamesCard(
              name: 'Paisaje',image: 'paisaje.jpg', price: 'Ta mu bonito el paisaje',
            ),
            GamesCard(
              name:'flores a venta', image: 'flore.jpg', price:'Precio: 50.000',
            ),
            GamesCard(
              name:'Gatito', image:'gato1.jpg',price:'Ta muh bonito',
            ),
            GamesCard(
              name:'Gatito2',image:'gato2.jpg', price:'Ta mu bonito en blanco',
            ),
            GamesCard(
              name:'Gatito3',image: 'gato3.jpg', price: 'Ta mu bonito 3',
            )
            
          ],
        ),
       
      ),
    );
  }
}
