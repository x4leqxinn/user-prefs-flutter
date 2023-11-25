import 'package:flutter/material.dart';
import 'package:user_preferences/shared_preferences/preferences.dart';
import 'package:user_preferences/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routerName = 'Home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(title: const Text('Home')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('is Dark mode ${Preferences.isDarkMode}'),
            const Divider(),
            Text('Genero ${Preferences.gender}'),
            const Divider(),
            Text('Nombre de usuario ${Preferences.name}')
          ],
        ));
  }
}
