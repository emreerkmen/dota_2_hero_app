import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/components/diagonal_hero_stack.dart';
import 'package:dota_2_hero_app/components/hero_list_type.dart';
import 'package:dota_2_hero_app/components/heroes_grid_view.dart';
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:dota_2_hero_app/screens/matches_screen.dart';
import 'package:dota_2_hero_app/screens/streams_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_2_hero_app/model/theme_model.dart';

class HerosScreen extends StatefulWidget {
  static const String id = 'heros_screen';

  @override
  _HerosScreenState createState() => _HerosScreenState();
}

class _HerosScreenState extends State<HerosScreen> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, HerosScreen.id);
        break;
      case 1:
        Navigator.pushNamed(context, StreamsScreen.id);
        break;
      case 2:
        Navigator.pushNamed(context, MatchesScreen.id);
        break;
    }

    setState(() {
      _selectedIndex = index;
    });
  }

  HerosList heroList = HerosList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ColorContainer(
          inChild: Column(
            children: <Widget>[
              ColorContainer(
                inChild: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Learn your',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Favorite Hero',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 22.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('images/avatar.jpg'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[],
                    ),
                    GridPaper()
                  ],
                ),
              ),
              HeroListType(),
              HeroesGridView(),
              ColorContainer(
                inChild: Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        context.read<ThemeModel>().toggleTheme();
                      },
                      child: Text(
                        "Change Theme",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Tutorial'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Stream'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              title: Text('Match'),
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red[800],
          onTap: _onItemTapped,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
