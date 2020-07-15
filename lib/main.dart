import 'package:dota_2_hero_app/model/theme_model.dart';
import 'package:dota_2_hero_app/screens/heros_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ThemeModel(),
      child: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dota 2 Hero App',
      theme: context.watch<ThemeModel>().getTheme(),
      home: HerosScreen(),
    );
  }
}
