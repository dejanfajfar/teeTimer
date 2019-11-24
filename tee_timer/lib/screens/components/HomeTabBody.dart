import 'package:flutter/material.dart';
import 'package:tee_timer/components/tee.dart';
import 'package:tee_timer/models/teeData.dart';


class HomeTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
          children: <Widget>[
          Tee(TeeData.black()),
          Tee(TeeData.green()),
          Tee(TeeData.herbal()),
          Tee(TeeData.fruit())
        ],
      )
    );
  }
}