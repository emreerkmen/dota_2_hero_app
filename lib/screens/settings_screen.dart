import 'package:dota_2_hero_app/components/color_container.dart';
import 'package:dota_2_hero_app/model/theme_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = 'settings screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ColorContainer(
        inChild: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
      ),
    );
  }
}
