import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:dota_2_hero_app/model/theme_model.dart';


class HerosScreen extends StatelessWidget {
  const HerosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: FlatButton(
            onPressed: () {
              context.read<ThemeModel>().toggleTheme();
            },
            child: Text(
              "Change Theme",
            ),
          ),
        ),
      ),
    );
  }
}
