import 'dart:async';
import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/components/hero_skill_images.dart';
import 'package:dota_2_hero_app/model/hero_class.dart';
import 'package:flutter/material.dart';
import 'package:dota_2_hero_app/components/hero_skill_stats.dart' as component;

class HeroScreen extends StatefulWidget {
  static const String id = 'hero_screen';
  HeroScreen({
    @required this.hero,
  });

  final HeroClass hero;

  @override
  _HeroScreenState createState() => _HeroScreenState();
}

class _HeroScreenState extends State<HeroScreen> {
  bool _move = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    nearlyImmediateTimer();
    startTimer();
  }

  Timer _timer;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);

    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
        () {
          _move = !_move;
        },
      ),
    );
  }

  static const ms = const Duration(milliseconds: 1);
  //When screen open, animation doesn't trigger because it's waiting 1 second
  //to setState dueto timer.period. So we change state after 1 miliseconds
  //when screen open
  nearlyImmediateTimer() {
    var duration = ms;
    return new Timer(duration, nearlyImmediateSetState);
  }

  void nearlyImmediateSetState() {
    setState(() {
      _move = !_move;
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: ColorContainer(
                inChild: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Stack(
                          overflow: Overflow.visible,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                //print('basıldı.');
                                setState(() {
                                  _move = !_move;
                                });
                              },
                              child: AnimatedContainer(
                                decoration: BoxDecoration(
                                  gradient: RadialGradient(
                                    radius: _move ? 0.5 : 0.4,
                                    center: Alignment.center,
                                    colors: [
                                      widget.hero.clipPathColor,
                                      Colors.black
                                    ],
                                    stops: [0.4, 1.0],
                                  ),
                                ),
                                duration: Duration(seconds: 1),
                                curve: Curves.easeInOut,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 5, 30),
                                  child: Image.asset(
                                    'images/${widget.hero.pngName}.png',
                                    width: 500.0,
                                    height: 350.0,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0.0,
                              left: 0.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: widget.hero.clipPathColor,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    padding: EdgeInsets.all(4),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        for (String item
                                            in widget.hero?.heroClass)
                                          Center(
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 4.0, vertical: 0),
                                              child: Text(
                                                '$item',
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .iconTheme
                                                      .color,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 17.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 5.0),
                                    child: Text(
                                      widget.hero.heroName,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ButtonTheme(
                              minWidth: 0.0,
                              child: FlatButton(
                                color: Theme.of(context).primaryColor,
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  color: Theme.of(context).iconTheme.color,
                                ),
                                padding: EdgeInsets.all(0),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0, 10.0, 20.0, 10.0),
                          child: Text(
                            'Hero Skills',
                            style: TextStyle(
                                color: widget.hero.clipPathColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        child: SingleChildScrollView(
                          //SingleChildScrollView is fit this place instead of Listview
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              for (var item in widget.hero.heroSkills)
                                HeroSkillImages(//Spareting Hero skill images with making new widget, provides to usage of animation tween separately. If we use widget code below for without making new widget, all the hero skill images rotate same time. 
                                  heroSkill: item,
                                ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20.0, 20.0, 0),
                          child: Text(
                            'Hero Stats',
                            style: TextStyle(
                                color: widget.hero.clipPathColor,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      for (var heroSkillStat in widget.hero.stats)
                        component.HeroSkillStats(
                            heroSkillStats: heroSkillStat,
                            color: widget.hero.clipPathColor),
                      Container(
                        height: 130.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                height: 120.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40.0),
                    bottom: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 0.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          style: TextStyle(fontSize: 17.0),
                          children: <TextSpan>[
                            TextSpan(text: '7 Streamer '),
                            TextSpan(
                                style:
                                    TextStyle(color: widget.hero.clipPathColor),
                                text: 'Available '),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              child: Stack(
                                children: [
                                  CircleAvatar(
                                    radius: 25.0,
                                    backgroundImage:
                                        AssetImage('images/avatar.jpg'),
                                  ),
                                  Positioned(
                                    left: 40.0,
                                    child: CircleAvatar(
                                      radius: 25.0,
                                      backgroundImage:
                                          AssetImage('images/avatar.jpg'),
                                    ),
                                  ),
                                  Positioned(
                                    left: 82.0,
                                    child: Container(
                                      width: 50.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        color: Colors.white,
                                      ),
                                      child: Center(
                                        child: Text(
                                          '+5',
                                          style: TextStyle(
                                              color: widget.hero.clipPathColor,
                                              fontSize: 18.0),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              height: 50.0,
                              width: 170.0,
                              decoration: BoxDecoration(
                                color: widget.hero.clipPathColor,
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              child: Center(
                                child: Text(
                                  'Stream Pro Player',
                                  style: TextStyle(fontSize: 17.0),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
