import 'package:flutter/material.dart';

import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardType1(),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl: 'https://wallpaperaccess.com/full/170249.jpg',
              name: 'Green Landscape',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.mickeyshannon.com/images/landscape-photography.jpg',
            ),
            SizedBox(
              height: 10,
            ),
            CustomCardType2(
              imageUrl:
                  'https://www.lenda.net/wp-content/uploads/2018/09/travel-landscape-01.jpg',
              name: 'An awesome lake',
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ));
  }
}
