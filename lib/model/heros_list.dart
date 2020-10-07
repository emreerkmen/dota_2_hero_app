import 'dart:ui';
import 'package:dota_2_hero_app/model/hero_class.dart';
import 'package:flutter/material.dart';

enum HerosType { All, Popular }

class HerosList extends ChangeNotifier {
  // var lst = new List(3) --> Fixed List, var  lst = [val1,val2,val3] or var lst = new List() --> Growable List
  final List<HeroClass> _allHeros = [
    HeroClass(
      heroName: 'Juggernaunt',
      pngName: 'juggernaut',
      viewNumber: 35,
      clipPathColor: Color(0xffc43a3d),
      bottom: 15.0,
      right: -65.0,
      height: 210.0,
      width: 250.0,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Colors.purple[800],
      pngName: 'ogremagi',
      heroName: 'Ogre Magi',
      viewNumber: 25,
      bottom: -30,
      right: -27,
      height: 290,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff4650C8),
      pngName: 'faceless',
      heroName: 'Faceless',
      viewNumber: 15,
      bottom: -8,
      right: -65,
      height: 245,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff0e5f7f),
      pngName: 'zeus',
      heroName: 'Zeus',
      viewNumber: 12,
      bottom: -6,
      right: -38,
      height: 255,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xffb71b1b),
      pngName: 'bloodseeker',
      heroName: 'Bloodseeker',
      viewNumber: 50,
      bottom: 40,
      right: -58,
      height: 180,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff1f95a3),
      pngName: 'tusk',
      heroName: 'Tusk',
      viewNumber: 5,
      bottom: 30,
      right: -39,
      height: 200,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff6144e2),
      pngName: 'bane',
      heroName: 'Bane',
      viewNumber: 20,
      bottom: 0,
      right: -45,
      height: 250,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff561515),
      pngName: 'shadowfiend',
      heroName: 'Shadow Fiend',
      viewNumber: 10,
      bottom: 10,
      right: -45,
      height: 230,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff0c3554),
      pngName: 'phantumassassin',
      heroName: 'P. Assassin',
      viewNumber: 60,
      bottom: 5,
      right: -90,
      height: 230,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff4f0000),
      pngName: 'axe2',
      heroName: 'Axe',
      viewNumber: 23,
      bottom: 5,
      right: -60,
      height: 200,
      width: 250,
      heroClass: ['Carry', 'Pusher'],
      heroSkills: [
        ['Blade Fury', 'Blade_Fury_icon.png'],
        ['Healing Ward', 'Healing_Ward_icon.png'],
        ['Blade Dance', 'Blade_Dance_icon.png'],
        ['Omnislash', 'Omnislash_icon.png'],
        ['Swiftslash', 'Swiftslash_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 34, everyLevelValue: 2.8),
        HeroSkillStats(statType: 'INT', firstValue: 14, everyLevelValue: 1.4),
      ],
    ),
  ];

  HerosType _herosType = HerosType.All;

  List<HeroClass> _heros;

  HeroClass _selectedHero;

  HerosList() {
    _heros = List.from(_allHeros);
  }

  List<HeroClass> get heros => _heros;

  List<HeroClass> get allHeros => _allHeros;

  List<HeroClass> get popularHeros => [
        for (var heros in _allHeros)
          if (heros.viewNumber > 10) heros
      ];

  HeroClass get selectedHero => _selectedHero;

  set setSelectedHero(HeroClass hero) => _selectedHero = hero;

  void toggleHeroesType() {
    //https://github.com/dart-lang/language/blob/master/accepted/2.3/spread-collections/feature-specification.md

    if (_herosType == HerosType.All) {
      _herosType = HerosType.Popular;
      _heros = [
        for (var heros in _allHeros)
          if (heros.viewNumber > 30) heros
      ];
      return notifyListeners();
    } else {
      _herosType = HerosType.All;
      _heros = List.from(_allHeros);
      return notifyListeners();
    }
  }

  void setHero({HeroClass hero}) => _selectedHero = hero;

  HerosType getHeroesType() {
    return _herosType;
  }
}
