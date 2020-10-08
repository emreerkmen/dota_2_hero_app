import 'package:dota_2_hero_app/model/hero_class.dart' as model;
import 'package:flutter/material.dart';

class HeroSkillStats extends StatelessWidget {
  const HeroSkillStats({@required this.heroSkillStats, @required this.color});
  final model.HeroSkillStats heroSkillStats;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0.0, 15.0),
            child: RichText(
              text: TextSpan(
                style: TextStyle(fontSize: 16.0),
                children: <TextSpan>[
                  TextSpan(
                    text: heroSkillStats.statType,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColorLight),
                  ),
                  TextSpan(
                      text: ' ' +
                          (heroSkillStats.firstValue +
                                  (heroSkillStats.everyLevelValue * 25))
                              .toInt()
                              .toString(),
                      style: TextStyle(
                          color: Colors.greenAccent[400],
                          fontWeight: FontWeight.w700)),
                  TextSpan(
                    text:
                        ' at 25 (${heroSkillStats.firstValue}+${heroSkillStats.everyLevelValue}/Level)',
                    style:
                        TextStyle(color: Theme.of(context).primaryColorLight),
                  ),
                ],
              ),
            ),
          ),
        ),
        Stack(
          children: <Widget>[
            Container(
              height: 7.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colors.white12),
            ),
            Container(
              height: 7.0,
              width: (MediaQuery.of(context).size.width *
                  (heroSkillStats.firstValue / 100)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: color),
            ),
          ],
        ),
      ],
    );
  }
}
