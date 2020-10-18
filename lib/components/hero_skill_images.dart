import 'package:flutter/material.dart';
import 'dart:math' as math;

class HeroSkillImages extends StatefulWidget {
  final heroSkill;
  HeroSkillImages({this.heroSkill});
  @override
  _HeroSkillImagesState createState() => _HeroSkillImagesState();
}

class _HeroSkillImagesState extends State<HeroSkillImages> {
  //TweenAnimationBuilder
  double skillAngle = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15.0, 0.0, 15.0),
      child: Container(
        width: 100.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 15.0),
              child: GestureDetector(
                onTap: () {
                  print('Skille basıldı.');
                  setState(() {
                    skillAngle = 2 * math.pi - skillAngle;
                  });
                },
                child: TweenAnimationBuilder(
                  tween: Tween<double>(begin: 0, end: skillAngle),
                  duration: Duration(seconds: 1),
                  child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: AssetImage(
                          'images/${widget.heroSkill[1]}',
                        ),
                      ),
                  builder: (BuildContext context, double angle, Widget myChild) {
                    return Transform.rotate(
                      angle: angle,
                      child: myChild,
                    );
                  },
                ),
              ),
            ),
            Text(
              widget.heroSkill[0],
              style: Theme.of(context).textTheme.headline5,
            )
          ],
        ),
      ),
    );
  }
}
