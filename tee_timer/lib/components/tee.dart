import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tee_timer/models/teeData.dart';


class Tee extends StatelessWidget {
  TeeData data;

  Tee(TeeData data) {
    this.data = data;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(this.data.name)
      ],
    );
  }
}