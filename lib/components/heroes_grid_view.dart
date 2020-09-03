import 'package:dota_2_hero_app/components/diagonal_hero_stack.dart';
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroesGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.82, // itemWidth / itemHeight = 0.82
        children: <Widget>[
          for (var hero in context.watch<HerosList>().heros)
            DiagonalHeroStack(
              clipPathColor: hero.clipPathColor,
              pngName: hero.pngName,
              heroName: hero.heroName,
              viewNumber: hero.viewNumber,
              bottom: hero.bottom,
              right: hero.right,
              height: hero.height,
              width: hero.width,
            ),
        ],
      ),
    );
  }
}
