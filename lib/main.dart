import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:dota_2_hero_app/model/theme_model.dart';
import 'package:dota_2_hero_app/screens/heros_screen.dart';
import 'package:dota_2_hero_app/screens/matches_screen.dart';
import 'package:dota_2_hero_app/screens/streams_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(//You don’t want to place ChangeNotifierProvider higher than necessary (because you don’t want to pollute the scope)
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeModel(),
        ),
        ChangeNotifierProvider(
          create: (context) => HerosList(),
        )
      ],
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
      //home: HerosScreen(),
      initialRoute: HerosScreen
          .id, //via static, we don't need create HerosScreen() object
      routes: {
        //if you want to use '/' format you have to set just '/' route
        HerosScreen.id: (context) => HerosScreen(),
        StreamsScreen.id: (context) => StreamsScreen(),
        MatchesScreen.id: (context) => MatchesScreen(),
        //ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
