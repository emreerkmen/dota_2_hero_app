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
                          padding: const EdgeInsets.all(20.0),
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
              Expanded(child: Container()),
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
