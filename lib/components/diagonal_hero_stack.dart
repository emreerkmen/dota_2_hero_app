import 'package:dota_2_hero_app/model/hero_class.dart';
import 'package:flutter/material.dart';

class DiagonalHeroStack extends StatelessWidget {
  const DiagonalHeroStack({this.hero});

  final HeroClass hero;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: <Widget>[
        ClipPath(
          clipper: MyCustomClipper(),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: hero.clipPathColor, //Colors.red[300],
            ),
          ),
        ),
        Positioned(
          bottom: hero.bottom,
          right: hero.right,
          height: hero.height,
          width: hero.width,
          child: Image.asset('images/${hero.pngName}.png'),
        ),
        Positioned(
          bottom: 20.0,
          left: 20.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5.0),
                child: Text(
                  hero.heroName,
                  style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w900,
                      fontSize: 20.0),
                ),
              ),
              Text(
                '${hero.viewNumber}K Views',
                style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                    fontSize: 13.0),
              )
            ],
          ),
        )
      ],
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double roundnessFactor = 30.0;
    double startHeight = size.height * 0.2;

    final Path path = Path()
      //we set start point to x=20.0 and y=80.0.
      ..moveTo(0, startHeight)
      // draw a line to bottom left corner until size.height-radius
      ..lineTo(0, size.height - roundnessFactor)
      // draw bottom left arc
      ..quadraticBezierTo(0, size.height, roundnessFactor, size.height)
      // draw a line from previous arc to bottom right corner until size.height
      ..lineTo(size.width - roundnessFactor, size.height)
      // draw a bottom right arc
      ..quadraticBezierTo(
          size.width, size.height, size.width, size.height - roundnessFactor)
      // draw a line from previous arc to top right corner until radius
      ..lineTo(size.width, roundnessFactor + 20)
      // draw a top right arc
      ..quadraticBezierTo(size.width, 10, size.width - roundnessFactor * 1.1,
          roundnessFactor * 0.5)
      // draw a line from previous arc to top left corner until startHeight
      ..lineTo(roundnessFactor, startHeight)
      // draw a top left arc
      ..quadraticBezierTo(0, startHeight + 5, 0, startHeight + roundnessFactor)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => true;
}

/*// ignore: todo
//TODO: This will be added under components file.
class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double radius = 20;
    double startHeight = size.height * 0.10;
    double startWidth = radius+10.0;

    final Path path = Path()
      //we set start point to x=20.0 and y=80.0.
      ..moveTo(startWidth, startHeight)
      // draw a line to top right corner until the size.width-radius
      ..lineTo(size.width - radius, 0)
      // draw top rigth arc
      ..arcToPoint(Offset(size.width, radius), radius: Radius.circular(radius))
      // draw a line from previous arc to bottom right corner until size.height - radius
      ..lineTo(size.width, size.height - radius)
      // draw a bottom right arc
      ..arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius))
      // draw a line from previous arc to bottom left corner until radius
      ..lineTo(radius, size.height)
      // draw a bottom left arc
      ..arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius))
      // draw a line from previous arc to top right corner until radius
      ..lineTo(0, startHeight + radius)
      // draw a top left arc
      ..arcToPoint(Offset(radius, startHeight), radius: Radius.circular(radius))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(MyCustomClipper oldClipper) => true;
} */
