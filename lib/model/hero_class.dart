/*
clipPathColor: Colors.purple[800],
pngName: 'ogremagi',
heroName: 'Ogre Magi',
viewNumber: 25,
bottom: -30,
right: -27,
height: 290,
width: 250, 
                      */
import 'dart:ui';

class HeroClass {
  final String heroName;
  final String pngName;
  final int viewNumber;
  final Color clipPathColor;
  final double bottom;
  final double right;
  final double height;
  final double width;
  final List<String> heroClass;
  final List<List<String>> heroSkills;
  final HeroSkillStats str;
  final HeroSkillStats agi;

  HeroClass(
      {this.heroName,
      this.pngName,
      this.viewNumber,
      this.clipPathColor,
      this.bottom,
      this.right,
      this.height,
      this.width,
      this.heroClass,
      this.heroSkills,
      this.str,
      this.agi});
}

class HeroSkillStats {
  final String statType;
  final double firstValue;
  final double everyLevelValue;
  HeroSkillStats({this.statType,this.firstValue, this.everyLevelValue});
}
