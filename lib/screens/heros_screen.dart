import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/components/diagonal_hero_stack.dart';
import 'package:dota_2_hero_app/components/hero_list_type.dart';
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
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 0.82, // itemWidth / itemHeight = 0.82
                  children: <Widget>[
                    DiagonalHeroStack(
                      clipPathColor: Color(0xffc43a3d),
                      pngName: 'juggernaut',
                      heroName: 'Juggernaunt',
                      viewNumber: 35,
                      bottom: 15.0,
                      right: -65.0,
                      height: 210.0,
                      width: 250.0,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Colors.purple[800],
                      pngName: 'ogremagi',
                      heroName: 'Ogre Magi',
                      viewNumber: 25,
                      bottom: -30,
                      right: -27,
                      height: 290,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff4650C8),
                      pngName: 'faceless',
                      heroName: 'Faceless',
                      viewNumber: 15,
                      bottom: -8,
                      right: -65,
                      height: 245,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff0e5f7f),
                      pngName: 'zeus',
                      heroName: 'Zeus',
                      viewNumber: 12,
                      bottom: -6,
                      right: -38,
                      height: 255,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xffb71b1b),
                      pngName: 'bloodseeker',
                      heroName: 'Bloodseeker',
                      viewNumber: 50,
                      bottom: 40,
                      right: -58,
                      height: 180,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff1f95a3),
                      pngName: 'tusk',
                      heroName: 'Tusk',
                      viewNumber: 5,
                      bottom: 30,
                      right: -39,
                      height: 200,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff6144e2),
                      pngName: 'bane',
                      heroName: 'Bane',
                      viewNumber: 20,
                      bottom: 0,
                      right: -45,
                      height: 250,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff561515),
                      pngName: 'shadowfiend',
                      heroName: 'Shadow Fiend',
                      viewNumber: 10,
                      bottom: 10,
                      right: -45,
                      height: 230,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff0c3554),
                      pngName: 'phantumassassin',
                      heroName: 'P. Assassin',
                      viewNumber: 60,
                      bottom: 5,
                      right: -90,
                      height: 230,
                      width: 250,
                    ),
                    DiagonalHeroStack(
                      clipPathColor: Color(0xff4f0000),
                      pngName: 'axe2',
                      heroName: 'Axe',
                      viewNumber: 23,
                      bottom: 5,
                      right: -60,
                      height: 200,
                      width: 250,
                    ),
                  ],
                ),
              ),
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
