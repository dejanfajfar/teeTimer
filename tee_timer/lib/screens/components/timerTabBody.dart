import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tee_timer/components/tee.dart';
import 'package:tee_timer/models/brewModel.dart';
import 'package:tee_timer/models/teeData.dart';


class TimerTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BrewModel>(
      builder: (context, brewModel, child) => Container(
        child: Text("Brewing ${brewModel.teeBrewing.name}"),
      ),
    );
  }
}