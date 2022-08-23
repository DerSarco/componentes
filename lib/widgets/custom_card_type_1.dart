import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album,
              color: AppTheme.primary,
            ),
            title: Text('Soy un título'),
            subtitle: Text(
                'Who can grasp the surrender and emptiness of an aspect if he has the special thought of the creator?'),
          ),
          Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Ok'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
