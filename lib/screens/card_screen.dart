import 'package:flutter/material.dart';

import 'package:components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(height: 10),
          CustomCardType2(name: 'Card 1', imageUrl: 'https://as1.ftcdn.net/v2/jpg/02/74/09/04/1000_F_274090498_Zc8cYIYomA49efotohhN7wFVdngp4XXT.jpg'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'http://www.theelementsofliving.com/wp-content/uploads/2015/10/Fall-in-Aspen.jpg'),
          SizedBox(height: 10),
          CustomCardType2(imageUrl: 'https://thumbs.dreamstime.com/b/escena-del-oto-o-%C3%A1rboles-amarillos-paisaje-colorido-brillante-en-parque-oto%C3%B1o-ca-da-naturaleza-de-la-144730057.jpg'),
        ],
      )
    );
  }
}