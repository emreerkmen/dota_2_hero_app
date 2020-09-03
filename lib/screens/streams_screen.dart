import 'package:dota_2_hero_app/components/diagonal_hero_stack.dart';
import 'package:dota_2_hero_app/model/heros_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';

class StreamsScreen extends StatelessWidget {
  final int columnCount = 3;
  static const String id = 'streams screen';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        childAspectRatio: 0.82, // itemWidth / itemHeight = 0.82
        children: List.generate(
          context.watch<HerosList>().heros.length,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 875),
              columnCount: columnCount,
              child: FlipAnimation(
                child: SlideAnimation(
                  child: DiagonalHeroStack(
                    hero: context.watch<HerosList>().heros[index],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
