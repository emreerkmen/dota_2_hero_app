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

  HeroClass(
      {this.heroName,
      this.pngName,
      this.viewNumber,
      this.clipPathColor,
      this.bottom,
      this.right,
      this.height,
      this.width});
}
