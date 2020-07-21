import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/components/hero_list_type.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_2_hero_app/model/theme_model.dart';

class HerosScreen extends StatelessWidget {
  const HerosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ColorContainer(
          inChild: Column(
            children: <Widget>[
              ColorContainer(
                inChild: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 20.0, 0.0, 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Learn your',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontWeight: FontWeight.w800),
                              ),
                              Text(
                                'Favorite Hero',
                                style: Theme.of(context)
                                    .textTheme
                                    .headline4
                                    .copyWith(fontWeight: FontWeight.w800),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 22.0),
                          child: CircleAvatar(
                            radius: 30.0,
                            backgroundImage: AssetImage('images/avatar.jpg'),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: <Widget>[],
                    ),
                    GridPaper()
                  ],
                ),
              ),
              HeroListType(),
              Expanded(
                child: GridView.count(
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  childAspectRatio: 0.82, //itemWidth / itemHeight
                  children: <Widget>[
                    Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        ClipPath(
                          clipper: MyCustomClipper(),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.red[300],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset('images/juggernaut.png'),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Text(
                                  'Juggernaut',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20.0),
                                ),
                              ),
                              Text(
                                '35K Views',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Stack(
                      fit: StackFit.expand,
                      overflow: Overflow.visible,
                      children: <Widget>[
                        ClipPath(
                          clipper: MyCustomClipper(),
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.purple[800],
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -30,
                          right: -27,
                          height: 290,
                          width: 250,
                          child: Image.asset(
                            'images/ogremagi.png',
                          ),
                        ),
                        Positioned(
                          bottom: 20.0,
                          left: 20.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5.0),
                                child: Text(
                                  'Ogre Magi',
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 20.0),
                                ),
                              ),
                              Text(
                                '25K Views',
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 13.0),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Sound of screams but the'),
                      color: Colors.deepPurple[300],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Who scream'),
                      color: Colors.cyan[400],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution is coming...'),
                      color: Colors.deepOrange[500],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: const Text('Revolution, they...'),
                      color: Colors.yellow[600],
                    ),
                  ],
                ),
              ),
              ColorContainer(
                inChild: Row(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        context.read<ThemeModel>().toggleTheme();
                      },
                      child: Text(
                        "Change Theme",
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: todo
//TODO: This will be added under components file.
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
