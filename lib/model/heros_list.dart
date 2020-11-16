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
      heroClass: ['Melee', 'Disabler', 'Durable', 'Initiator', 'Nuker', 'Support'],
      heroSkills: [
        ['Fireblast',           'OgreMagi/Fireblast_icon.png'],
        ['Ignite',              'OgreMagi/Ignite_icon.png'],
        ['Bloodlust',           'OgreMagi/Bloodlust_icon.png'],
        ['Unrefined Fireblast', 'OgreMagi/Unrefined_Fireblast_icon.png'],
        ['Multicast',           'OgreMagi/Multicast_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 23, everyLevelValue: 3.5),
        HeroSkillStats(statType: 'AGI', firstValue: 14, everyLevelValue: 1.5),
        HeroSkillStats(statType: 'INT', firstValue: 15, everyLevelValue: 2.5),
      ],
    ),
    HeroClass(
      clipPathColor: Color(0xff4650C8),
      pngName: 'faceless',
      heroName: 'Faceless Void',
      viewNumber: 15,
      bottom: -8,
      right: -65,
      height: 245,
      width: 250,
      heroClass: ['Melee', 'Carry', 'Disabler', 'Durable', 'Escape', 'Initiator'],
      heroSkills: [
        ['Time Walk',     'FacelessVoid/Time_Walk_icon.png'],
        ['Time Dilation', 'FacelessVoid/Time_Dilation_icon.png'],
        ['Time Lock',     'FacelessVoid/Time_Lock_icon.png'],
        ['Chronosphere',  'FacelessVoid/Chronosphere_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 22, everyLevelValue: 2.4),
        HeroSkillStats(statType: 'AGI', firstValue: 23, everyLevelValue: 3.0),
        HeroSkillStats(statType: 'INT', firstValue: 15, everyLevelValue: 1.5),
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
      heroClass: ['Ranged', 'Nuker'],
      heroSkills: [
        ['Arc Lightning',        'Zeus/Arc_Lightning_icon.png'],
        ['Lightning Bolt',       'Zeus/Lightning_Bolt_icon.png'],
        ['Nimbus',              'Zeus/Nimbus_icon.png'],
        ['Static Field',        'Zeus/Static_Field_icon.png'],
        ['Thundergod\'s Wrath', 'Zeus/Thundergod\'s_Wrath_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 19, everyLevelValue: 2.1),
        HeroSkillStats(statType: 'AGI', firstValue: 11, everyLevelValue: 1.2),
        HeroSkillStats(statType: 'INT', firstValue: 22, everyLevelValue: 3.3),
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
      heroClass: ['Melee', 'Carry', 'Disabler', 'Initiator', 'Jungler', 'Nuker'],
      heroSkills: [
        ['Bloodrage',  'Bloodseeker/Bloodrage_icon.png'],
        ['Blood Rite', 'Bloodseeker/Blood_Rite_icon.png'],
        ['Thirst',     'Bloodseeker/Thirst_icon.png'],
        ['Rupture',    'Bloodseeker/Rupture_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 24, everyLevelValue: 2.7),
        HeroSkillStats(statType: 'AGI', firstValue: 22, everyLevelValue: 3.4),
        HeroSkillStats(statType: 'INT', firstValue: 21, everyLevelValue: 2.0),
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
      heroClass: ['Melee', 'Disabler', 'Initiator', 'Nuker'],
      heroSkills: [
        ['Ice Shards',   'Tusk/Ice_Shards_icon.png'],
        ['Snowball',     'Tusk/Launch_Snowball_icon.png'],
        ['Tag Team',     'Tusk/Tag_Team_icon.png'],
        ['Walrus Kick',  'Tusk/Walrus_Kick_icon.png'],
        ['Walrus Punch', 'Tusk/Walrus_Punch_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 23, everyLevelValue: 3.9),
        HeroSkillStats(statType: 'AGI', firstValue: 23, everyLevelValue: 2.1),
        HeroSkillStats(statType: 'INT', firstValue: 18, everyLevelValue: 1.7),
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
      heroClass: ['Ranged', 'Disabler', 'Durable', 'Nuker', 'Support'],
      heroSkills: [
        ['Nightmare',     'Bane/Nightmare_icon.png'],
        ['Brain Sap',     'Bane/Brain_Sap_icon.png'],
        ['Enfeeble',      'Bane/Enfeeble_icon.png'],
        ['Fiend\'s Grip', 'Bane/Fiend\'s_Grip_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 22, everyLevelValue: 2.6),
        HeroSkillStats(statType: 'AGI', firstValue: 22, everyLevelValue: 2.6),
        HeroSkillStats(statType: 'INT', firstValue: 22, everyLevelValue: 2.6),
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
      heroClass: ['Ranged', 'Carry', 'Nuker'],
      heroSkills: [
        ['Shadowraze',                 'ShadowFiend/Shadowraze_(Far)_icon.png'],
        ['Shadowraze',                 'ShadowFiend/Shadowraze_(Medium)_icon.png'],
        ['Shadowraze',                 'ShadowFiend/Shadowraze_(Near)_icon.png'],
        ['Necromastery',               'ShadowFiend/Necromastery_icon.png'],
        ['Presence of the Dark Lord', 'ShadowFiend/Presence_of_the_Dark_Lord_icon.png'],
        ['Requiem of Souls icon',      'ShadowFiend/Requiem_of_Souls_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 19, everyLevelValue: 2.7),
        HeroSkillStats(statType: 'AGI', firstValue: 20, everyLevelValue: 3.5),
        HeroSkillStats(statType: 'INT', firstValue: 18, everyLevelValue: 2.2),
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
      heroClass: ['Melee', 'Carry', 'Escape'],
      heroSkills: [

        ['Stifling Dagger', 'PhantomAssassin/Stifling_Dagger_icon.png'],
        ['Phantom Strike', 'PhantomAssassin/Phantom_Strike_icon.png'],
        ['Blur', 'PhantomAssassin/Blur_icon.png'],
        ['Coup de Grace', 'PhantomAssassin/Coup_de_Grace_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 21, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'AGI', firstValue: 23, everyLevelValue: 3.4),
        HeroSkillStats(statType: 'INT', firstValue: 15, everyLevelValue: 1.4),
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
      heroClass: ['Melee', 'Disabler', 'Durable', 'Initiator', 'Jungler'],
      heroSkills: [
        ['Berserker\'s Call', 'Axe/Berserker\'s_Call_icon.png'],
        ['Battle Hunger', 'Axe/Battle_Hunger_icon.png'],
        ['Counter Helix', 'Axe/Counter_Helix_icon.png'],
        ['Culling Blade', 'Axe/Culling_Blade_icon.png'],
      ],
      stats: [
        HeroSkillStats(statType: 'STR', firstValue: 25, everyLevelValue: 3.4),
        HeroSkillStats(statType: 'AGI', firstValue: 20, everyLevelValue: 2.2),
        HeroSkillStats(statType: 'INT', firstValue: 18, everyLevelValue: 1.6),
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
