import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/model/hero_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dota_2_hero_app/components/hero_skill_stats.dart' as component;

class HeroScreen extends StatelessWidget {
  static const String id = 'hero_screen';
  HeroScreen({
    @required this.hero,
  });

  final HeroClass hero;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ColorContainer(
          inChild: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 5, 30),
                          child: Image.asset(
                            'images/${hero.pngName}.png',
                            width: 500.0,
                            height: 350.0,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0.0,
                        left: 00.0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: hero.clipPathColor,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              padding: EdgeInsets.all(4),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  for (String item in hero?.heroClass)
                                    Center(
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 4.0, vertical: 0),
                                        child: Text(
                                          '$item',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .iconTheme
                                                .color,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 17.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 5.0),
                              child: Text(
                                hero.heroName,
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ButtonTheme(
                        minWidth: 0.0,
                        child: FlatButton(
                          color: Theme.of(context).primaryColor,
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: Theme.of(context).iconTheme.color,
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
                    child: Text(
                      'Hero Skills',
                      style: TextStyle(
                          color: hero.clipPathColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    //SingleChildScrollView is fit this place instead of Listview
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for (var item in hero.heroSkills)
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(0, 15.0, 0.0, 15.0),
                            child: Container(
                              width: 100.0,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        0, 0, 0, 15.0),
                                    child: CircleAvatar(
                                      radius: 30.0,
                                      backgroundImage: AssetImage(
                                        'images/${item[1]}',
                                      ),
                                    ),
                                  ),
                                  Text(
                                    item[0],
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20.0, 20.0, 0),
                    child: Text(
                      'Hero Stats',
                      style: TextStyle(
                          color: hero.clipPathColor,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
                component.HeroSkillStats(
                    heroSkillStats: hero.str, color: hero.clipPathColor),
                component.HeroSkillStats(
                    heroSkillStats: hero.agi, color: hero.clipPathColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
