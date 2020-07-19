import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:flutter/material.dart';

enum HeroList { allHero, popular }

class HeroListType extends StatefulWidget {
  @override
  _HeroListTypeState createState() => _HeroListTypeState();
}

class _HeroListTypeState extends State<HeroListType> {
  HeroList _listType = HeroList.allHero;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1F1F27),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0),
                      child: Text(
                        'All Hero',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: HeroList.allHero,
                      groupValue: _listType,
                      onChanged: (HeroList value) {
                        setState(() {
                          _listType = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xff1F1F27),
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(30.0, 20.0, 20.0, 20.0),
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(right: 13.0),
                      child: Text(
                        'Popular',
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ),
                    Radio(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      value: HeroList.popular,
                      groupValue: _listType,
                      onChanged: (HeroList value) {
                        setState(() {
                          _listType = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
