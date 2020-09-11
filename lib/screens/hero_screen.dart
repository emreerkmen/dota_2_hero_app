import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/model/hero_class.dart';
import 'package:flutter/material.dart';

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
          inChild: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                overflow: Overflow.visible,
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 5, 5, 30),
                      child: Image.asset(
                        'images/${hero.pngName}.png',
                        width: 500.0,
                        height: 350.0,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    left: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: hero.clipPathColor,
                            borderRadius: BorderRadius.circular(3),
                          ),
                          padding: EdgeInsets.all(4),
                          child: Row(
                            children: [
                              for (String item in hero?.heroClass)
                                Text(
                                  '$item',
                                  style: TextStyle(
                                    color: Theme.of(context).iconTheme.color,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17.0,
                                  ),
                                ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text(
                            hero.heroName,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                  RaisedButton(
                      color: Theme.of(context).primaryColor,
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Theme.of(context).iconTheme.color,
                      ),
                      padding: EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                child: Text(
                  'Hero Skills',
                  style: TextStyle(
                      color: hero.clipPathColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
