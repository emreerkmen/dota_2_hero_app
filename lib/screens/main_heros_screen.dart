import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/components/hero_list_type.dart';
import 'package:dota_2_hero_app/components/heroes_grid_view.dart';
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:dota_2_hero_app/screens/settings_screen.dart';
import 'package:dota_2_hero_app/screens/streams_screen.dart';
import 'package:flutter/material.dart';

class MainHerosScreen extends StatefulWidget {
  static const String id = 'main_heros_screen';

  @override
  _MainHerosScreenState createState() => _MainHerosScreenState();
}

class _MainHerosScreenState extends State<MainHerosScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, MainHerosScreen.id);
        break;
      case 1:
        Navigator.pushNamed(context, StreamsScreen.id);
        break;
      case 2:
        Navigator.pushNamed(context, SettingsScreen.id);
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
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Tutorial',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.business,
              ),
              label: 'Stream',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.school,
              ),
              label: 'Settings', //This can change to "Match" again
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.red,
          unselectedItemColor: Color(0xffCFCBD9),
          selectedIconTheme: IconThemeData(color: Colors.red),
          unselectedIconTheme: IconThemeData(color: Color(0xffCFCBD9)),
          onTap: _onItemTapped,
          backgroundColor: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}
