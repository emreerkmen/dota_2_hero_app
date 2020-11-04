import 'package:dota_2_hero_app/model/hero_class.dart' as model;
import 'package:flutter/material.dart';

class HeroSkillStats extends StatefulWidget {
  const HeroSkillStats({@required this.heroSkillStats, @required this.color});
  final model.HeroSkillStats heroSkillStats;
  final Color color;

  @override
  _HeroSkillStatsState createState() => _HeroSkillStatsState();
}

class _HeroSkillStatsState extends State<HeroSkillStats>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  CurvedAnimation _curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
      duration: Duration(seconds: 5, milliseconds: 500),
      vsync: this,
    );
    _curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 15.0, 0.0, 15.0),
            child: AnimatedBuilder(
              animation: _curvedAnimation,
              builder: (_, __) {
                return RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16.0),
                    children: <TextSpan>[
                      TextSpan(
                        text: widget.heroSkillStats.statType,
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Theme.of(context).primaryColorLight),
                      ),
                      TextSpan(
                          text: ' ' +
                              (widget.heroSkillStats.firstValue *
                                          _animationController.value +
                                      (widget.heroSkillStats.everyLevelValue *
                                          25))
                                  .toInt()
                                  .toString(),
                          style: TextStyle(
                              color: Colors.greenAccent[400],
                              fontWeight: FontWeight.w700)),
                      TextSpan(
                        text:
                            ' at 25 (${widget.heroSkillStats.firstValue}+${widget.heroSkillStats.everyLevelValue}/Level)',
                        style: TextStyle(
                            color: Theme.of(context).primaryColorLight),
                      ),
                    ],
                  ),
                );
              },
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
            AnimatedBuilder(
              animation: _curvedAnimation,
              builder: (_, __) {
                return Container(
                  height: 7.0,
                  width: (MediaQuery.of(context).size.width *
                      (widget.heroSkillStats.firstValue *
                          _animationController.value /
                          100)),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: widget.color),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
