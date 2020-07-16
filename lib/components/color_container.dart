import 'package:flutter/material.dart';

class ColorContainer extends StatelessWidget {
  final Widget inChild;

  const ColorContainer({this.inChild});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: inChild,
    );
  }
}