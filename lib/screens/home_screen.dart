import 'package:componentes/router/app_routes.dart';
import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          elevation: 0,
        ),
        body: ListView.separated(
          itemCount: menuOptions.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(menuOptions[index].name),
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
            onTap: () {
              // final route = MaterialPageRoute(
              //   builder: (context) => const ListView1Screen(),
              // );
              // Navigator.push(context, route);

              Navigator.pushNamed(context, menuOptions[index].route);
            },
          ),
          separatorBuilder: (context, index) => const Divider(),
        ));
  }
}
