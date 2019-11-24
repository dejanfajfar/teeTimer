import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tee_timer/models/brewModel.dart';


class HistoryTabBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<BrewModel>(
      builder: (context, brewModel, child) =>
          Container(
            child: ListView.builder(
              itemCount: brewModel.getBrewHistory().length,
              itemBuilder: (context, index) => Row(
                children: <Widget>[
                  Text(brewModel.getBrewHistory()[index].teaType),
                  Text(brewModel.getBrewHistory()[index].timestamp.toIso8601String())
                ],
              ),
            ),
          ),
    );
  }
}