import 'package:dota_2_hero_app/components/diagonal_hero_stack.dart';
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HeroesGridView extends StatelessWidget {
  final int pos = 0;
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
              hero: hero,
            ),
        ],
      ),
    );
  }
}

// AnimationConfiguration.staggeredGrid(
//               position: pos + 1,
//               duration: const Duration(milliseconds: 875),
//               columnCount: 2,
//               child: FlipAnimation(
//                 child: SlideAnimation(
//                   child: DiagonalHeroStack(
//                     hero: hero,
//                   ),
//                 ),
//               ),
//             ),
